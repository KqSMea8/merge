.class public Lc8/Urb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vrb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Vrb;

.field final synthetic val$scrollView:Landroid/view/View;

.field final synthetic val$val:D


# direct methods
.method constructor <init>(Lc8/Vrb;Landroid/view/View;D)V
    .locals 1
    .param p1, "this$0"    # Lc8/Vrb;

    .prologue
    .line 162
    iput-object p1, p0, Lc8/Urb;->this$0:Lc8/Vrb;

    iput-object p2, p0, Lc8/Urb;->val$scrollView:Landroid/view/View;

    iput-wide p3, p0, Lc8/Urb;->val$val:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lc8/Urb;->val$scrollView:Landroid/view/View;

    iget-wide v2, p0, Lc8/Urb;->val$val:D

    invoke-static {v2, v3}, Lc8/vsb;->access$1800(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollY(I)V

    .line 166
    return-void
.end method
