.class public Lc8/ih;
.super Lc8/th;
.source "TransitionManagerPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jh;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jh;

.field final synthetic val$runningTransitions:Landroid/support/v4/util/ArrayMap;


# direct methods
.method constructor <init>(Lc8/jh;Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jh;

    .prologue
    .line 431
    iput-object p1, p0, Lc8/ih;->this$0:Lc8/jh;

    iput-object p2, p0, Lc8/ih;->val$runningTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Lc8/th;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lc8/uh;)V
    .locals 3
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 434
    iget-object v1, p0, Lc8/ih;->val$runningTransitions:Landroid/support/v4/util/ArrayMap;

    iget-object v2, p0, Lc8/ih;->this$0:Lc8/jh;

    iget-object v2, v2, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    .line 435
    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 436
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method
