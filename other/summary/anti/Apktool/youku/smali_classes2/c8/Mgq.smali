.class public Lc8/Mgq;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ngq;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Ngq;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lc8/Ngq;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Ngq;

    .prologue
    .line 139
    iput-object p1, p0, Lc8/Mgq;->this$1:Lc8/Ngq;

    iput-object p2, p0, Lc8/Mgq;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 142
    iget-object v0, p0, Lc8/Mgq;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 143
    return-void
.end method
