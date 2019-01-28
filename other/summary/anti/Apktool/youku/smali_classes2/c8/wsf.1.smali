.class public Lc8/wsf;
.super Ljava/lang/Object;
.source "TraceDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Asf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryRunningApp"
.end annotation


# instance fields
.field app:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field memoryInfo:Landroid/os/Debug$MemoryInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
