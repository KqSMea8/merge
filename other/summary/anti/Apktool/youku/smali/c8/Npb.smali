.class public Lc8/Npb;
.super Ljava/lang/Object;
.source "WXTabbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Opb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabItem"
.end annotation


# static fields
.field public static final DEFAULT_FONTSIZE:I = 0x18

.field public static final DEFAULT_ICON_SIZE:I = 0x44

.field public static final FONT_SIZE:Ljava/lang/String; = "fontSize"

.field public static final ICON_SIZE:Ljava/lang/String; = "iconSize"


# instance fields
.field mBadge:Landroid/widget/TextView;

.field mIcon:Ljava/lang/String;

.field mImage:Landroid/widget/ImageView;

.field mInstance:Lc8/nVf;

.field mItemId:Ljava/lang/String;

.field mSelectedIcon:Ljava/lang/String;

.field mText:Landroid/widget/TextView;

.field mTitleColor:I

.field mTitleSelectedColor:I

.field mView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method public static create(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;Lc8/nVf;)Lc8/Npb;
    .locals 26
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lc8/nVf;

    .prologue
    .line 236
    new-instance v14, Lc8/Npb;

    invoke-direct {v14}, Lc8/Npb;-><init>()V

    .line 238
    .local v14, "item":Lc8/Npb;
    move-object/from16 v0, p2

    iput-object v0, v14, Lc8/Npb;->mInstance:Lc8/nVf;

    .line 239
    const-string/jumbo v23, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 240
    .local v20, "title":Ljava/lang/String;
    const-string/jumbo v23, "titleColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v21

    .line 241
    .local v21, "titleColor":I
    const-string/jumbo v23, "titleSelectedColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v22

    .line 242
    .local v22, "titleSelectedColor":I
    const-string/jumbo v23, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 243
    .local v12, "imageSrc":Ljava/lang/String;
    const-string/jumbo v23, "selectedImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 244
    .local v17, "selectedImageSrc":Ljava/lang/String;
    const-string/jumbo v23, "badge"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 246
    .local v4, "badgeCount":I
    const/16 v9, 0x44

    .line 247
    .local v9, "iconSize":I
    const-string/jumbo v23, "iconSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 248
    const-string/jumbo v23, "iconSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    .line 250
    :cond_0
    const/16 v8, 0x18

    .line 251
    .local v8, "fontSize":I
    const-string/jumbo v23, "fontSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 252
    const-string/jumbo v23, "fontSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    .line 254
    :cond_1
    const-string/jumbo v23, "itemId"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 256
    .local v15, "itemId":Ljava/lang/String;
    iput-object v15, v14, Lc8/Npb;->mItemId:Ljava/lang/String;

    .line 257
    move/from16 v0, v21

    iput v0, v14, Lc8/Npb;->mTitleColor:I

    .line 258
    move/from16 v0, v22

    iput v0, v14, Lc8/Npb;->mTitleSelectedColor:I

    .line 259
    iput-object v12, v14, Lc8/Npb;->mIcon:Ljava/lang/String;

    .line 260
    move-object/from16 v0, v17

    iput-object v0, v14, Lc8/Npb;->mSelectedIcon:Ljava/lang/String;

    .line 262
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 263
    .local v16, "layout":Landroid/widget/LinearLayout;
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 264
    const/16 v23, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 265
    const/16 v23, 0x30

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 267
    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 270
    .local v6, "fl":Landroid/widget/RelativeLayout;
    const/16 v23, 0x11

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 271
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    .local v7, "flLp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 274
    .local v10, "image":Landroid/widget/ImageView;
    sget v23, Lcom/youku/phone/R$id;->tabbar_image:I

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 275
    int-to-float v0, v9

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lc8/Jgg;->getRealPxByWidth(F)F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 276
    .local v13, "imgSize":I
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 277
    .local v11, "imageLP":Landroid/widget/RelativeLayout$LayoutParams;
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 278
    const/16 v23, 0xe

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 279
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, "badge":Landroid/widget/TextView;
    if-lez v4, :cond_2

    .line 283
    new-instance v3, Landroid/widget/TextView;

    .end local v3    # "badge":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 284
    .restart local v3    # "badge":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v5, "badgeLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x1

    sget v24, Lcom/youku/phone/R$id;->tabbar_image:I

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 286
    const/16 v23, 0x1

    const/high16 v24, -0x3f600000    # -5.0f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 287
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const/16 v23, 0x1

    const/high16 v24, 0x41200000    # 10.0f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    const/16 v23, 0x11

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 291
    sget v23, Lcom/youku/phone/R$drawable;->badge:I

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 292
    invoke-virtual {v6, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .end local v5    # "badgeLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 297
    .local v18, "text":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const/16 v23, 0x0

    int-to-float v0, v8

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/Jgg;->getRealPxByWidth(F)F

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 300
    .local v19, "textLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 301
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 302
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    move-object/from16 v0, v18

    iput-object v0, v14, Lc8/Npb;->mText:Landroid/widget/TextView;

    .line 308
    iput-object v10, v14, Lc8/Npb;->mImage:Landroid/widget/ImageView;

    .line 309
    iput-object v3, v14, Lc8/Npb;->mBadge:Landroid/widget/TextView;

    .line 310
    move-object/from16 v0, v16

    iput-object v0, v14, Lc8/Npb;->mView:Landroid/view/View;

    .line 311
    return-object v14
.end method

.method private loadIcon(Z)V
    .locals 5
    .param p1, "isSelected"    # Z

    .prologue
    .line 229
    iget-object v1, p0, Lc8/Npb;->mInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v0

    .line 230
    .local v0, "imgLoaderAdapter":Lc8/EVf;
    if-eqz v0, :cond_0

    .line 231
    if-eqz p1, :cond_1

    iget-object v1, p0, Lc8/Npb;->mSelectedIcon:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lc8/Npb;->mImage:Landroid/widget/ImageView;

    sget-object v3, Lcom/taobao/weex/dom/WXImageQuality;->ORIGINAL:Lcom/taobao/weex/dom/WXImageQuality;

    new-instance v4, Lc8/GXf;

    invoke-direct {v4}, Lc8/GXf;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lc8/EVf;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    .line 233
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lc8/Npb;->mIcon:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lc8/Npb;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lc8/Npb;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setSelectedState(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 220
    iget-object v1, p0, Lc8/Npb;->mText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lc8/Npb;->mTitleSelectedColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    invoke-direct {p0, p1}, Lc8/Npb;->loadIcon(Z)V

    .line 222
    return-void

    .line 220
    :cond_0
    iget v0, p0, Lc8/Npb;->mTitleColor:I

    goto :goto_0
.end method
