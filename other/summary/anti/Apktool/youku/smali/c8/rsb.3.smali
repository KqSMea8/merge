.class public Lc8/rsb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ssb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ssb;

.field final synthetic val$d2:D

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/ssb;Landroid/view/View;D)V
    .locals 1
    .param p1, "this$0"    # Lc8/ssb;

    .prologue
    .line 242
    iput-object p1, p0, Lc8/rsb;->this$0:Lc8/ssb;

    iput-object p2, p0, Lc8/rsb;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lc8/rsb;->val$d2:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lc8/rsb;->val$targetView:Landroid/view/View;

    iget-wide v2, p0, Lc8/rsb;->val$d2:D

    invoke-static {v2, v3}, Lc8/vsb;->access$1800(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 246
    return-void
.end method
