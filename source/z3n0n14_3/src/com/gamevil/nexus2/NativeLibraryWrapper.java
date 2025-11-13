package com.gamevil.nexus2;

import android.util.Log;

public class NativeLibraryWrapper {
    private static final String TAG = "NativeLibraryWrapper";
    private static boolean libraryLoaded = false;
    
    static {
        try {
            System.loadLibrary("gameDSO");
            libraryLoaded = true;
            Log.i(TAG, "Native library gameDSO loaded successfully");
        } catch (UnsatisfiedLinkError e) {
            libraryLoaded = false;
            Log.w(TAG, "Failed to load native library: " + e.getMessage());
        } catch (Exception e) {
            libraryLoaded = false;
            Log.w(TAG, "Exception loading native library: " + e.getMessage());
        }
    }
    
    public static boolean isLibraryLoaded() {
        return libraryLoaded;
    }
    
    public static void safeNativeResumeClet() {
        if (!libraryLoaded) {
            Log.w(TAG, "Native library not loaded, skipping NativeResumeClet");
            return;
        }
        try {
            Natives.NativeResumeClet();
        } catch (UnsatisfiedLinkError e) {
            Log.w(TAG, "NativeResumeClet not available: " + e.getMessage());
        } catch (Exception e) {
            Log.w(TAG, "Exception in NativeResumeClet: " + e.getMessage());
        }
    }
    
    public static void safeNativePauseClet() {
        if (!libraryLoaded) {
            Log.w(TAG, "Native library not loaded, skipping NativePauseClet");
            return;
        }
        try {
            Natives.NativePauseClet();
        } catch (UnsatisfiedLinkError e) {
            Log.w(TAG, "NativePauseClet not available: " + e.getMessage());
        } catch (Exception e) {
            Log.w(TAG, "Exception in NativePauseClet: " + e.getMessage());
        }
    }
    
    public static void safeNativeRender() {
        if (!libraryLoaded) {
            Log.w(TAG, "Native library not loaded, skipping NativeRender");
            return;
        }
        try {
            Natives.NativeRender();
        } catch (UnsatisfiedLinkError e) {
            Log.w(TAG, "NativeRender not available: " + e.getMessage());
        } catch (Exception e) {
            Log.w(TAG, "Exception in NativeRender: " + e.getMessage());
        }
    }
}
