.class public Lc8/Oe;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Te;->setError(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Te;

.field final synthetic val$error:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lc8/Te;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Te;

    .prologue
    .line 733
    iput-object p1, p0, Lc8/Oe;->this$0:Lc8/Te;

    iput-object p2, p0, Lc8/Oe;->val$error:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 736
    iget-object v0, p0, Lc8/Oe;->this$0:Lc8/Te;

    iget-object v0, v0, Lc8/Te;->mErrorView:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Oe;->val$error:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 738
    return-void
.end method
