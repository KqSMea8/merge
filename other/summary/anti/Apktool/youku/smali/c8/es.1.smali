.class public Lc8/es;
.super Lc8/Kt;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/js;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/js;


# direct methods
.method constructor <init>(Lc8/js;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/js;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 245
    iput-object p1, p0, Lc8/es;->this$0:Lc8/js;

    invoke-direct {p0, p2}, Lc8/Kt;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lc8/mr;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lc8/es;->this$0:Lc8/js;

    invoke-virtual {v0}, Lc8/js;->getListPopupWindow()Lc8/Hu;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lc8/es;->this$0:Lc8/js;

    invoke-virtual {v0}, Lc8/js;->showPopup()Z

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lc8/es;->this$0:Lc8/js;

    invoke-virtual {v0}, Lc8/js;->dismissPopup()Z

    .line 260
    const/4 v0, 0x1

    return v0
.end method
