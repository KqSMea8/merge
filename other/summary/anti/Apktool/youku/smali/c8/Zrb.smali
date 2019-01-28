.class public Lc8/Zrb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/asb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/asb;

.field final synthetic val$alpha:F

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/asb;Landroid/view/View;F)V
    .locals 0
    .param p1, "this$0"    # Lc8/asb;

    .prologue
    .line 181
    iput-object p1, p0, Lc8/Zrb;->this$0:Lc8/asb;

    iput-object p2, p0, Lc8/Zrb;->val$targetView:Landroid/view/View;

    iput p3, p0, Lc8/Zrb;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lc8/Zrb;->val$targetView:Landroid/view/View;

    iget v1, p0, Lc8/Zrb;->val$alpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 185
    return-void
.end method
