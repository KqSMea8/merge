.class public Lc8/Ms;
.super Lc8/Kt;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ss;

.field final synthetic val$popup:Lc8/Rs;


# direct methods
.method constructor <init>(Lc8/Ss;Landroid/view/View;Lc8/Rs;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ss;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 251
    iput-object p1, p0, Lc8/Ms;->this$0:Lc8/Ss;

    iput-object p3, p0, Lc8/Ms;->val$popup:Lc8/Rs;

    invoke-direct {p0, p2}, Lc8/Kt;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lc8/mr;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lc8/Ms;->val$popup:Lc8/Rs;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lc8/Ms;->this$0:Lc8/Ss;

    iget-object v0, v0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lc8/Ms;->this$0:Lc8/Ss;

    iget-object v0, v0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->show()V

    .line 262
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
