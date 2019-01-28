.class public final Lc8/UUb;
.super Ljava/lang/Object;
.source "ThreadWatch.java"

# interfaces
.implements Lc8/YUb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZUb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThreadMonitorStat(Ljava/lang/String;I)V
    .locals 0
    .param p1, "measureName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 27
    return-void
.end method

.method public onThreadNotResponding(Ljava/lang/String;)V
    .locals 0
    .param p1, "_namePrefix"    # Ljava/lang/String;

    .prologue
    .line 24
    return-void
.end method
