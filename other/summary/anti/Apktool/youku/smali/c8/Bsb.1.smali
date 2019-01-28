.class public Lc8/Bsb;
.super Ljava/lang/Object;
.source "ExpressionScrollHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Csb;->onScrolled(Lc8/Rv;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Csb;

.field final synthetic val$dx:I

.field final synthetic val$dy:I

.field final synthetic val$tdx:I

.field final synthetic val$tdy:I


# direct methods
.method constructor <init>(Lc8/Csb;IIII)V
    .locals 0
    .param p1, "this$1"    # Lc8/Csb;

    .prologue
    .line 352
    iput-object p1, p0, Lc8/Bsb;->this$1:Lc8/Csb;

    iput p2, p0, Lc8/Bsb;->val$dx:I

    iput p3, p0, Lc8/Bsb;->val$dy:I

    iput p4, p0, Lc8/Bsb;->val$tdx:I

    iput p5, p0, Lc8/Bsb;->val$tdy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 355
    iget-object v0, p0, Lc8/Bsb;->this$1:Lc8/Csb;

    iget-object v0, v0, Lc8/Csb;->this$0:Lc8/Fsb;

    iget-object v1, p0, Lc8/Bsb;->this$1:Lc8/Csb;

    invoke-static {v1}, Lc8/Csb;->access$800(Lc8/Csb;)I

    move-result v1

    iget-object v2, p0, Lc8/Bsb;->this$1:Lc8/Csb;

    invoke-static {v2}, Lc8/Csb;->access$900(Lc8/Csb;)I

    move-result v2

    iget v3, p0, Lc8/Bsb;->val$dx:I

    iget v4, p0, Lc8/Bsb;->val$dy:I

    iget v5, p0, Lc8/Bsb;->val$tdx:I

    iget v6, p0, Lc8/Bsb;->val$tdy:I

    invoke-static/range {v0 .. v6}, Lc8/Fsb;->access$200(Lc8/Fsb;IIIIII)V

    .line 356
    return-void
.end method
