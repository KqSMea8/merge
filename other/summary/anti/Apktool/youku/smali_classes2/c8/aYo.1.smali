.class public Lc8/aYo;
.super Landroid/widget/LinearLayout;
.source "ActionView.java"


# static fields
.field public static final TYPE_APP_MARKET:I = 0x7

.field public static final TYPE_DOWNLOAD_APK:I = 0x8

.field public static final TYPE_GAMECENTER_DETAIL:I = 0x9

.field public static final TYPE_LIVE:I = 0xa

.field public static final TYPE_PLAYLIST:I = 0x3

.field public static final TYPE_SHOW:I = 0x2

.field public static final TYPE_SPECIAL_VIDEO:I = 0x5

.field public static final TYPE_SUBJECT:I = 0xb

.field public static final TYPE_URL:I = 0x4

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private Tag:Ljava/lang/String;

.field private actoionview:Landroid/view/View;

.field public box_id:Ljava/lang/String;

.field public child_position:I

.field public cid:Ljava/lang/String;

.field public groupTitle:Ljava/lang/String;

.field private heighttype:I

.field private homepage_line:Landroid/widget/ImageView;

.field private homepage_line_bottom:Landroid/view/View;

.field private imageview:Landroid/widget/ImageView;

.field private layout:Landroid/widget/LinearLayout;

.field private layout_textl:Lc8/bYo;

.field private layoutdata:Landroid/widget/RelativeLayout;

.field private mbitmaplist:[Landroid/graphics/Bitmap;

.field private mcur:I

.field private middle_stripe:Landroid/widget/TextView;

.field private offbottom:I

.field private offleft:I

.field private offright:I

.field private offtop:I

.field public position:I

.field private remark:Landroid/widget/TextView;

.field private textview:Landroid/widget/TextView;

.field private triangle_text:Lc8/tap;

.field private triangle_view:Lc8/Pap;

.field private triangle_wrapper:Landroid/view/View;

.field public type:I

.field public which_group:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string/jumbo v1, "ActionView"

    iput-object v1, p0, Lc8/aYo;->Tag:Ljava/lang/String;

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lc8/aYo;->mcur:I

    .line 40
    const/16 v1, 0x10

    iput v1, p0, Lc8/aYo;->offleft:I

    .line 41
    iput v4, p0, Lc8/aYo;->offtop:I

    .line 42
    const/16 v1, 0xd

    iput v1, p0, Lc8/aYo;->offright:I

    .line 43
    iput v4, p0, Lc8/aYo;->offbottom:I

    .line 109
    iput-object v2, p0, Lc8/aYo;->triangle_wrapper:Landroid/view/View;

    .line 110
    iput-object v2, p0, Lc8/aYo;->triangle_view:Lc8/Pap;

    .line 111
    iput-object v2, p0, Lc8/aYo;->triangle_text:Lc8/tap;

    .line 115
    const-string/jumbo v1, "layout_inflater"

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 117
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/youku/phone/R$layout;->list_homepage_item_one:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc8/aYo;->actoionview:Landroid/view/View;

    .line 118
    iget-object v1, p0, Lc8/aYo;->actoionview:Landroid/view/View;

    invoke-direct {p0, v1}, Lc8/aYo;->Initview(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0, v3}, Lc8/aYo;->setClickable(Z)V

    .line 120
    invoke-virtual {p0, v3}, Lc8/aYo;->setFocusable(Z)V

    .line 121
    sget v1, Lcom/youku/phone/R$string;->current_namespace:I

    .line 122
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    const/4 v3, 0x4

    .line 121
    invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lc8/aYo;->heighttype:I

    .line 123
    iget v1, p0, Lc8/aYo;->heighttype:I

    invoke-direct {p0, v1}, Lc8/aYo;->setType(I)V

    .line 124
    return-void
.end method

.method private Initview(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lc8/aYo;->Tag:Ljava/lang/String;

    const-string/jumbo v1, "InitView Error"

    invoke-static {v0, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 143
    :cond_0
    sget v0, Lcom/youku/phone/R$id;->layout_actionview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lc8/aYo;->layout:Landroid/widget/LinearLayout;

    .line 144
    sget v0, Lcom/youku/phone/R$id;->img_actionview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/aYo;->imageview:Landroid/widget/ImageView;

    .line 145
    sget v0, Lcom/youku/phone/R$id;->text_actionview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/aYo;->textview:Landroid/widget/TextView;

    .line 146
    sget v0, Lcom/youku/phone/R$id;->layout_actionviewdata:I

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lc8/aYo;->layoutdata:Landroid/widget/RelativeLayout;

    .line 148
    sget v0, Lcom/youku/phone/R$id;->homepage_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/aYo;->homepage_line:Landroid/widget/ImageView;

    .line 149
    sget v0, Lcom/youku/phone/R$id;->homepage_line_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/aYo;->homepage_line_bottom:Landroid/view/View;

    .line 150
    sget v0, Lcom/youku/phone/R$id;->text_remask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/aYo;->remark:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/youku/phone/R$id;->middle_stripe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/aYo;->middle_stripe:Landroid/widget/TextView;

    .line 152
    sget v0, Lcom/youku/phone/R$id;->layout_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/bYo;

    iput-object v0, p0, Lc8/aYo;->layout_textl:Lc8/bYo;

    .line 154
    sget v0, Lcom/youku/phone/R$id;->triangle_wrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/aYo;->triangle_wrapper:Landroid/view/View;

    .line 155
    sget v0, Lcom/youku/phone/R$id;->triangle_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Pap;

    iput-object v0, p0, Lc8/aYo;->triangle_view:Lc8/Pap;

    .line 156
    sget v0, Lcom/youku/phone/R$id;->triangle_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/tap;

    iput-object v0, p0, Lc8/aYo;->triangle_text:Lc8/tap;

    goto :goto_0
.end method

.method private clearAllData()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lc8/aYo;->mbitmaplist:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/aYo;->mbitmaplist:[Landroid/graphics/Bitmap;

    .line 240
    :cond_0
    return-void
.end method

.method private clearLayoutMargin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v1, p0, Lc8/aYo;->layoutdata:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 226
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    iget-object v1, p0, Lc8/aYo;->homepage_line:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 252
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .local v0, "bit":Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 255
    .local v1, "tmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "tmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLayoutMargin()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 211
    iget-object v1, p0, Lc8/aYo;->layoutdata:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 216
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget v1, p0, Lc8/aYo;->offleft:I

    iget v2, p0, Lc8/aYo;->offtop:I

    iget v3, p0, Lc8/aYo;->offright:I

    iget v4, p0, Lc8/aYo;->offbottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    iget-object v1, p0, Lc8/aYo;->layoutdata:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v1, p0, Lc8/aYo;->layout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    return-void
.end method

.method private setRemask(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lc8/aYo;->remark:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lc8/aYo;->remark:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method private setTextData(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lc8/aYo;->textview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method private setType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lc8/aYo;->imageview:Landroid/widget/ImageView;

    check-cast v0, Lc8/OZo;

    .line 128
    .local v0, "homeimg":Lc8/OZo;
    invoke-virtual {v0, p1}, Lc8/OZo;->setScale(I)V

    .line 129
    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 130
    :cond_0
    iget-object v1, p0, Lc8/aYo;->layout_textl:Lc8/bYo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lc8/bYo;->setScal(I)V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_1
    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    .line 132
    :cond_2
    iget-object v1, p0, Lc8/aYo;->layout_textl:Lc8/bYo;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lc8/bYo;->setScal(I)V

    goto :goto_0

    .line 134
    :cond_3
    const-string/jumbo v1, "HomeUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ActionView setType error type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getBitmapList()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc8/aYo;->mbitmaplist:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapToUrl(Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, -0x1

    return v0
.end method

.method public getBox_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lc8/aYo;->box_id:Ljava/lang/String;

    return-object v0
.end method

.method public getChild_position()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lc8/aYo;->child_position:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lc8/aYo;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v0, "bd":Landroid/os/Bundle;
    return-object v0
.end method

.method public getCurPlayListID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getCurShowTiD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getCurTiD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getCurTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getCurVideoType()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentOpenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getCurrentVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getGroupTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lc8/aYo;->groupTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lc8/aYo;->imageview:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lc8/aYo;->position:I

    return v0
.end method

.method public getWhich_group()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lc8/aYo;->which_group:I

    return v0
.end method

.method public isPay()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 360
    iget v1, p0, Lc8/aYo;->heighttype:I

    invoke-static {v1}, Lc8/Nyo;->getWidth(I)I

    move-result v0

    .line 361
    .local v0, "w":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 363
    return-void
.end method

.method public setBox_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "box_id"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lc8/aYo;->box_id:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setChild_position(I)V
    .locals 0
    .param p1, "child_position"    # I

    .prologue
    .line 317
    iput p1, p0, Lc8/aYo;->child_position:I

    .line 318
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lc8/aYo;->cid:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setGroupTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupTitle"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lc8/aYo;->groupTitle:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 329
    iput p1, p0, Lc8/aYo;->position:I

    .line 330
    return-void
.end method

.method public setVideoSpecialLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 161
    iget-object v2, p0, Lc8/aYo;->middle_stripe:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/youku/phone/R$id;->homepage_line_bottom:I

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    iget-object v2, p0, Lc8/aYo;->middle_stripe:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v2, p0, Lc8/aYo;->middle_stripe:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lc8/aYo;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    .local v1, "layoutParamsImageView":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/youku/phone/R$id;->homepage_line_bottom:I

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 168
    iget-object v2, p0, Lc8/aYo;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    return-void
.end method

.method public setWhich_group(I)V
    .locals 0
    .param p1, "which_group"    # I

    .prologue
    .line 345
    iput p1, p0, Lc8/aYo;->which_group:I

    .line 346
    return-void
.end method

.method public setbackground()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lc8/aYo;->layout:Landroid/widget/LinearLayout;

    sget v1, Lcom/youku/phone/R$drawable;->photo_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lc8/aYo;->homepage_line:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    return-void
.end method
