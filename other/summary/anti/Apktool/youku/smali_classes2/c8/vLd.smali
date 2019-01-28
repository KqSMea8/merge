.class public Lc8/vLd;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wLd;->track(Lc8/iLd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wLd;

.field final synthetic val$attemptEmit:Z

.field final synthetic val$event:Lc8/iLd;


# direct methods
.method constructor <init>(Lc8/wLd;Lc8/iLd;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/wLd;

    .prologue
    .line 75
    iput-object p1, p0, Lc8/vLd;->this$0:Lc8/wLd;

    iput-object p2, p0, Lc8/vLd;->val$event:Lc8/iLd;

    iput-boolean p3, p0, Lc8/vLd;->val$attemptEmit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lc8/vLd;->this$0:Lc8/wLd;

    iget-object v1, p0, Lc8/vLd;->val$event:Lc8/iLd;

    iget-boolean v2, p0, Lc8/vLd;->val$attemptEmit:Z

    invoke-static {v0, v1, v2}, Lc8/wLd;->access$101(Lc8/wLd;Lc8/iLd;Z)V

    .line 78
    return-void
.end method
