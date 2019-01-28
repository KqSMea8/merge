.class public Lc8/Cw;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dw;


# direct methods
.method constructor <init>(Lc8/Dw;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lc8/Cw;->this$0:Lc8/Dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 361
    iget-object v4, p0, Lc8/Cw;->this$0:Lc8/Dw;

    iget-object v4, v4, Lc8/Dw;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lc8/Cw;->this$0:Lc8/Dw;

    iget-object v5, v5, Lc8/Dw;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/bs;->get(Landroid/content/Context;Ljava/lang/String;)Lc8/bs;

    move-result-object v1

    .line 363
    .local v1, "dataModel":Lc8/bs;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 364
    .local v2, "itemId":I
    invoke-virtual {v1, v2}, Lc8/bs;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v3

    .line 365
    .local v3, "launchIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 366
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "android.intent.action.SEND_MULTIPLE"

    .line 368
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    :cond_0
    iget-object v4, p0, Lc8/Cw;->this$0:Lc8/Dw;

    invoke-virtual {v4, v3}, Lc8/Dw;->updateIntent(Landroid/content/Intent;)V

    .line 371
    :cond_1
    iget-object v4, p0, Lc8/Cw;->this$0:Lc8/Dw;

    iget-object v4, v4, Lc8/Dw;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 373
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method
