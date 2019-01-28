.class public Lc8/cd;
.super Lc8/Vc;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dd;


# direct methods
.method constructor <init>(Lc8/dd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dd;

    .prologue
    .line 198
    iput-object p1, p0, Lc8/cd;->this$0:Lc8/dd;

    invoke-direct {p0}, Lc8/Vc;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "slideOffset"    # F

    .prologue
    .line 209
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newState"    # I

    .prologue
    .line 202
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 203
    iget-object v0, p0, Lc8/cd;->this$0:Lc8/dd;

    invoke-virtual {v0}, Lc8/dd;->cancel()V

    .line 205
    :cond_0
    return-void
.end method
