.class public Lc8/gZf;
.super Ljava/lang/Object;
.source "CreateFinishAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hZf;->executeDom(Lc8/gYf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hZf;

.field final synthetic val$instance:Lc8/nVf;

.field final synthetic val$listener:Lc8/SUf;


# direct methods
.method constructor <init>(Lc8/hZf;Lc8/SUf;Lc8/nVf;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lc8/gZf;->this$0:Lc8/hZf;

    iput-object p2, p0, Lc8/gZf;->val$listener:Lc8/SUf;

    iput-object p3, p0, Lc8/gZf;->val$instance:Lc8/nVf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lc8/gZf;->val$listener:Lc8/SUf;

    iget-object v1, p0, Lc8/gZf;->val$instance:Lc8/nVf;

    invoke-interface {v0, v1}, Lc8/SUf;->onLayoutFinish(Lc8/nVf;)V

    .line 47
    return-void
.end method
