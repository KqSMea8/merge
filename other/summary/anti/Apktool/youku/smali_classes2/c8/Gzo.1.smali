.class public final Lc8/Gzo;
.super Ljava/lang/Object;
.source "YoukuUIUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mzo;->setCornerMarkData(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cornerView:Lc8/aWc;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lc8/Gzo;->val$context:Landroid/content/Context;

    iput p2, p0, Lc8/Gzo;->val$type:I

    iput-object p3, p0, Lc8/Gzo;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lc8/Gzo;->val$cornerView:Lc8/aWc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 207
    iget-object v1, p0, Lc8/Gzo;->val$context:Landroid/content/Context;

    iget v2, p0, Lc8/Gzo;->val$type:I

    iget-object v3, p0, Lc8/Gzo;->val$text:Ljava/lang/String;

    iget-object v4, p0, Lc8/Gzo;->val$cornerView:Lc8/aWc;

    invoke-static {v1, v2, v3, v4}, Lc8/Mzo;->setCornerMark(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V

    .line 208
    iget-object v1, p0, Lc8/Gzo;->val$cornerView:Lc8/aWc;

    invoke-virtual {v1}, Lc8/aWc;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 209
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 210
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
