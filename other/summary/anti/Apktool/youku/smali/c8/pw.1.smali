.class public Lc8/pw;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zw;


# direct methods
.method constructor <init>(Lc8/zw;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zw;

    .prologue
    .line 1027
    iput-object p1, p0, Lc8/pw;->this$0:Lc8/zw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1030
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    iget-object v0, v0, Lc8/zw;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1031
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    invoke-virtual {v0}, Lc8/zw;->onSearchClicked()V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    iget-object v0, v0, Lc8/zw;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1033
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    invoke-virtual {v0}, Lc8/zw;->onCloseClicked()V

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    iget-object v0, v0, Lc8/zw;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 1035
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    invoke-virtual {v0}, Lc8/zw;->onSubmitQuery()V

    goto :goto_0

    .line 1036
    :cond_3
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    iget-object v0, v0, Lc8/zw;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 1037
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    invoke-virtual {v0}, Lc8/zw;->onVoiceClicked()V

    goto :goto_0

    .line 1038
    :cond_4
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    iget-object v0, v0, Lc8/zw;->mSearchSrcTextView:Lc8/xw;

    if-ne p1, v0, :cond_0

    .line 1039
    iget-object v0, p0, Lc8/pw;->this$0:Lc8/zw;

    invoke-virtual {v0}, Lc8/zw;->forceSuggestionQuery()V

    goto :goto_0
.end method
