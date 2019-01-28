.class public Lc8/Rof;
.super Ljava/util/TimerTask;
.source "AlibcDeviceProbeCompoment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActiveTask"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tof;


# direct methods
.method private constructor <init>(Lc8/Tof;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lc8/Rof;->this$0:Lc8/Tof;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Tof;Lc8/Qof;)V
    .locals 0
    .param p1, "x0"    # Lc8/Tof;
    .param p2, "x1"    # Lc8/Qof;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lc8/Rof;-><init>(Lc8/Tof;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lc8/Rof;->this$0:Lc8/Tof;

    invoke-static {v0}, Lc8/Tof;->access$100(Lc8/Tof;)V

    .line 241
    iget-object v0, p0, Lc8/Rof;->this$0:Lc8/Tof;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/Tof;->access$202(Lc8/Tof;Z)Z

    .line 242
    return-void
.end method
