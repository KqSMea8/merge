.class public Lc8/qcb;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lc8/scb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tcb;->setFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tcb;

.field final synthetic val$frame:I


# direct methods
.method constructor <init>(Lc8/tcb;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/tcb;

    .prologue
    .line 494
    iput-object p1, p0, Lc8/qcb;->this$0:Lc8/tcb;

    iput p2, p0, Lc8/qcb;->val$frame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lc8/kcb;)V
    .locals 2
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 496
    iget-object v0, p0, Lc8/qcb;->this$0:Lc8/tcb;

    iget v1, p0, Lc8/qcb;->val$frame:I

    invoke-virtual {v0, v1}, Lc8/tcb;->setFrame(I)V

    .line 497
    return-void
.end method
