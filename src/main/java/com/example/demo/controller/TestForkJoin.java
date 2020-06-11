package com.example.demo.controller;

import java.util.concurrent.*;

public class TestForkJoin extends RecursiveTask<Integer> {

    int max = 10000000;
    int hold = 1000;

    int start;

    public TestForkJoin(int start, int end) {
        this.start = start;
        this.end = end;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    int end;

    @Override
    protected Integer compute() {
        int num = 0;
        if(end - start <= hold){
            for(int i=start;i<end;i++){
                num ++;
            }
            return num;
        }else{
            int mid = (start +end)/2;
            TestForkJoin t1 = new TestForkJoin(start, mid);
            t1.fork();
            TestForkJoin t2 = new TestForkJoin(mid+1, end);
            t2.fork();
            return t1.join() + t2.join();
        }
    }

    public static void main(String[] args) {
       Future<Integer> futureTask = new ForkJoinPool().submit(new TestForkJoin(1, 1000000));
        try {
            System.out.println(futureTask.get());
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }
    }
}
