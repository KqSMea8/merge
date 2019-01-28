.class public Lc8/pcb;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lc8/scb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tcb;->setMaxFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tcb;

.field final synthetic val$maxFrame:I


# direct methods
.method constructor <init>(Lc8/tcb;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/tcb;

    .prologue
    .line 410
    iput-object p1, p0, Lc8/pcb;->this$0:Lc8/tcb;

    iput p2, p0, Lc8/pcb;->val$maxFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lc8/kcb;)V
    .locals 2
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 412
    iget-object v0, p0, Lc8/pcb;->this$0:Lc8/tcb;

    iget v1, p0, Lc8/pcb;->val$maxFrame:I

    invoke-virtual {v0, v1}, Lc8/tcb;->setMaxFrame(I)V

    .line 413
    return-void
.end method
