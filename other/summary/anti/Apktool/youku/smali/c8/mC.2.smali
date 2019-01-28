.class public interface abstract Lc8/mC;
.super Ljava/lang/Object;
.source "WVIAdapter.java"


# static fields
.field public static final NOTIFY_FAIL:I = 0x0

.field public static final NOTIFY_SUCCESS:I = 0x1


# virtual methods
.method public abstract getLoginInfo(Landroid/os/Handler;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract login(Landroid/os/Handler;)V
.end method
