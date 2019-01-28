.class public final Lc8/LUb;
.super Ljava/lang/Object;
.source "MainLooperMonitor.java"

# interfaces
.implements Lc8/PUb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QUb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppMonitorStat(Ljava/lang/String;I)V
    .locals 0
    .param p1, "measureName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 34
    return-void
.end method

.method public onAppNotResponding(Ljava/lang/String;)V
    .locals 0
    .param p1, "_namePrefix"    # Ljava/lang/String;

    .prologue
    .line 31
    return-void
.end method
