.class public final Lc8/PKj;
.super Ljava/lang/Object;
.source "AlipayUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QKj;->checkWXAppPayValid(Landroid/app/Activity;Lc8/Ojg;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$dialog:Lc8/Cbp;


# direct methods
.method constructor <init>(Lc8/Cbp;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lc8/PKj;->val$dialog:Lc8/Cbp;

    iput-object p2, p0, Lc8/PKj;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lc8/PKj;->val$dialog:Lc8/Cbp;

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    .line 173
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    iget-object v1, p0, Lc8/PKj;->val$context:Landroid/app/Activity;

    const-string/jumbo v2, "http://weixin.qq.com/"

    invoke-interface {v0, v1, v2}, Lc8/Xgn;->goWebView(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    return-void
.end method
