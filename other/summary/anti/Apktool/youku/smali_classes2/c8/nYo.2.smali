.class public Lc8/nYo;
.super Ljava/lang/Object;
.source "CardLoginRegistView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pYo;->setMoreMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/pYo;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/pYo;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/pYo;

    .prologue
    .line 121
    iput-object p1, p0, Lc8/nYo;->this$0:Lc8/pYo;

    iput-object p2, p0, Lc8/nYo;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 125
    .local v2, "now":J
    invoke-static {}, Lc8/pYo;->access$200()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 205
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {v2, v3}, Lc8/pYo;->access$202(J)J

    .line 164
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-virtual {v4}, Lc8/pYo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$dimen;->login_regist_dialog_menu_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 165
    .local v0, "menuWidth":F
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-virtual {v4}, Lc8/pYo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lc8/bzo;->dip2px(FLandroid/content/Context;)I

    move-result v1

    .line 166
    .local v1, "menuWidthInteger":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==pop menu width=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==pop menu width==menuWidthInteger=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    new-instance v5, Lc8/Sbp;

    iget-object v6, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-virtual {v6}, Lc8/pYo;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lc8/Sbp;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lc8/pYo;->access$302(Lc8/pYo;Lc8/Sbp;)Lc8/Sbp;

    .line 170
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$300(Lc8/pYo;)Lc8/Sbp;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v6, "#ffe6e6e6"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5, v8}, Lc8/Sbp;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 171
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$300(Lc8/pYo;)Lc8/Sbp;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/youku/phone/R$string;->login_by_sina_weibo:I

    invoke-virtual {v4, v5, v6}, Lc8/Sbp;->add(II)Lc8/Obp;

    .line 172
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$300(Lc8/pYo;)Lc8/Sbp;

    move-result-object v4

    const/4 v5, 0x1

    sget v6, Lcom/youku/phone/R$string;->register:I

    invoke-virtual {v4, v5, v6}, Lc8/Sbp;->add(II)Lc8/Obp;

    .line 173
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$400(Lc8/pYo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$500(Lc8/pYo;)I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_1

    .line 175
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$300(Lc8/pYo;)Lc8/Sbp;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$string;->saosao:I

    invoke-virtual {v4, v8, v5}, Lc8/Sbp;->add(II)Lc8/Obp;

    .line 186
    :goto_1
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$300(Lc8/pYo;)Lc8/Sbp;

    move-result-object v4

    new-instance v5, Lc8/mYo;

    invoke-direct {v5, p0}, Lc8/mYo;-><init>(Lc8/nYo;)V

    invoke-virtual {v4, v5}, Lc8/Sbp;->setOnItemSelectedListener(Lc8/Rbp;)V

    .line 203
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$300(Lc8/pYo;)Lc8/Sbp;

    move-result-object v4

    iget-object v5, p0, Lc8/nYo;->val$view:Landroid/view/View;

    const/16 v6, 0x35

    invoke-virtual {v4, v5, v6}, Lc8/Sbp;->showAsDropDown(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 177
    :cond_1
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$300(Lc8/pYo;)Lc8/Sbp;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$string;->saosao:I

    invoke-virtual {v4, v8, v5}, Lc8/Sbp;->add(II)Lc8/Obp;

    goto :goto_1

    .line 181
    :cond_2
    iget-object v4, p0, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v4}, Lc8/pYo;->access$500(Lc8/pYo;)I

    goto :goto_1
.end method
