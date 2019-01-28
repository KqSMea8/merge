.class public Lc8/tsb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/usb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/usb;

.field final synthetic val$params1:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/usb;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "this$0"    # Lc8/usb;

    .prologue
    .line 455
    iput-object p1, p0, Lc8/tsb;->this$0:Lc8/usb;

    iput-object p2, p0, Lc8/tsb;->val$targetView:Landroid/view/View;

    iput-object p3, p0, Lc8/tsb;->val$params1:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lc8/tsb;->val$targetView:Landroid/view/View;

    iget-object v1, p0, Lc8/tsb;->val$params1:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    return-void
.end method
