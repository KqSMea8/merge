.class public Lc8/FEn;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IEn;->addCustomDeleteTitle(Lc8/lq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IEn;

.field final synthetic val$extendMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lc8/IEn;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lc8/IEn;

    .prologue
    .line 365
    iput-object p1, p0, Lc8/FEn;->this$0:Lc8/IEn;

    iput-object p2, p0, Lc8/FEn;->val$extendMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v0, p0, Lc8/FEn;->this$0:Lc8/IEn;

    iget-object v0, v0, Lc8/IEn;->mActionMode:Lc8/lq;

    if-eqz v0, :cond_0

    .line 370
    const-string/jumbo v0, "\u5b8c\u6210\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v1, "\u5bfc\u822a\u9875"

    iget-object v2, p0, Lc8/FEn;->val$extendMap:Ljava/util/HashMap;

    const-string/jumbo v3, "editBar.doneClick"

    invoke-static {v0, v1, v2, v3}, Lc8/IEn;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lc8/FEn;->this$0:Lc8/IEn;

    iget-object v0, v0, Lc8/IEn;->mActionMode:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->finish()V

    .line 376
    :cond_0
    return-void
.end method
