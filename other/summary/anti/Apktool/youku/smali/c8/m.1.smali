.class public Lc8/m;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Lc8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyFrameCallbackProvider"
.end annotation


# instance fields
.field final mChoreographer:Landroid/view/Choreographer;

.field final synthetic this$0:Lc8/n;


# direct methods
.method private constructor <init>(Lc8/n;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lc8/m;->this$0:Lc8/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lc8/m;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method synthetic constructor <init>(Lc8/n;Lc8/j;)V
    .locals 0
    .param p1, "x0"    # Lc8/n;
    .param p2, "x1"    # Lc8/j;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lc8/m;-><init>(Lc8/n;)V

    return-void
.end method


# virtual methods
.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .prologue
    .line 187
    iget-object v0, p0, Lc8/m;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 188
    return-void
.end method
