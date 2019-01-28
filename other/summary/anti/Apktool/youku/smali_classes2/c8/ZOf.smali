.class public Lc8/ZOf;
.super Lc8/SOf;
.source "ImageSaveFeature.java"

# interfaces
.implements Lc8/KOf;
.implements Lc8/ROf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/YOf;,
        Lc8/XOf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/SOf",
        "<",
        "Landroid/widget/ImageView;",
        ">;",
        "Lc8/KOf;",
        "Lc8/ROf;"
    }
.end annotation


# static fields
.field public static final IMAGE_SAVE_REQUEST_CODE:I = 0x5de


# instance fields
.field private mActive:Z

.field private mChoices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/XOf;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mSaveBmp:Landroid/graphics/Bitmap;

.field private mSaveFileTask:Lc8/YOf;

.field private mStartPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lc8/SOf;-><init>()V

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/ZOf;->mStartPoint:Landroid/graphics/PointF;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ZOf;->mSaveBmp:Landroid/graphics/Bitmap;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/ZOf;->mActive:Z

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/ZOf;->mChoices:Ljava/util/HashMap;

    .line 350
    return-void
.end method

.method static synthetic access$000(Lc8/ZOf;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZOf;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lc8/ZOf;->saveImageView(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$100(Lc8/ZOf;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZOf;

    .prologue
    .line 65
    invoke-direct {p0}, Lc8/ZOf;->dismissDialog()V

    return-void
.end method

.method static synthetic access$300(Lc8/ZOf;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/ZOf;

    .prologue
    .line 65
    iget-object v0, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lc8/ZOf;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/ZOf;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lc8/ZOf;->getStringResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lc8/ZOf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/ZOf;

    .prologue
    .line 65
    invoke-direct {p0}, Lc8/ZOf;->checkSavePlan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lc8/ZOf;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZOf;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lc8/ZOf;->notifyNewMedia(Landroid/net/Uri;)V

    return-void
.end method

.method private checkSavePlan()Z
    .locals 2

    .prologue
    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lc8/ZOf;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ZOf;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lc8/ZOf;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ZOf;->mDialog:Landroid/app/Dialog;

    .line 223
    :cond_0
    return-void
.end method

.method private getBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 294
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 296
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 297
    if-nez v1, :cond_1

    .line 299
    const/4 v0, 0x0

    .line 309
    :cond_0
    :goto_0
    return-object v0

    .line 303
    :cond_1
    const/4 v0, 0x0

    .line 304
    .local v0, "bmp":Landroid/graphics/Bitmap;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 306
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getStringResource(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyNewMedia(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 340
    return-void
.end method

.method private saveImageView(Landroid/widget/ImageView;)V
    .locals 10
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v9, 0x0

    .line 227
    invoke-direct {p0, p1}, Lc8/ZOf;->getBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lc8/ZOf;->mSaveBmp:Landroid/graphics/Bitmap;

    .line 228
    iget-object v7, p0, Lc8/ZOf;->mSaveBmp:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 230
    iget-object v7, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/youku/phone/R$string;->uik_save_image_fail_get:I

    invoke-direct {p0, v8}, Lc8/ZOf;->getStringResource(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 284
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lc8/ZOf;->checkSavePlan()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 239
    .local v5, "pictures":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 240
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_1

    .line 241
    iget-object v7, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/youku/phone/R$string;->uik_save_image_fail:I

    invoke-direct {p0, v8}, Lc8/ZOf;->getStringResource(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 246
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 250
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lc8/ZOf;->mSaveBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v6, v7}, Lc8/ZOf;->saveImageFile(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 252
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v5    # "pictures":Ljava/io/File;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .restart local v1    # "fileName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.category.OPENABLE"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string/jumbo v7, "image/png"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string/jumbo v7, "android.intent.extra.TITLE"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v0, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    .line 259
    .local v0, "context":Landroid/content/Context;
    :goto_1
    instance-of v7, v0, Landroid/content/ContextWrapper;

    if-eqz v7, :cond_3

    .line 260
    instance-of v7, v0, Landroid/app/Activity;

    if-nez v7, :cond_3

    .line 263
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_1

    .line 265
    :cond_3
    if-eqz v0, :cond_5

    instance-of v7, v0, Landroid/app/Activity;

    if-eqz v7, :cond_5

    .line 268
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 270
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string/jumbo v7, "TBackFragment"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lc8/dPf;

    .line 272
    .local v3, "fragment":Lc8/dPf;
    if-nez v3, :cond_4

    .line 273
    new-instance v3, Lc8/dPf;

    .end local v3    # "fragment":Lc8/dPf;
    invoke-direct {v3}, Lc8/dPf;-><init>()V

    .line 275
    .restart local v3    # "fragment":Lc8/dPf;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const-string/jumbo v8, "TBackFragment"

    invoke-virtual {v7, v3, v8}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 276
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 278
    :cond_4
    invoke-virtual {v3, p0}, Lc8/dPf;->setImageSaveFeature(Lc8/ZOf;)V

    .line 279
    const/16 v7, 0x5de

    invoke-virtual {v3, v4, v7}, Lc8/dPf;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 281
    .end local v2    # "fm":Landroid/app/FragmentManager;
    .end local v3    # "fragment":Lc8/dPf;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_5
    iget-object v7, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/youku/phone/R$string;->uik_save_image_fail:I

    invoke-direct {p0, v8}, Lc8/ZOf;->getStringResource(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private showDialog()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 182
    iget-object v7, p0, Lc8/ZOf;->mChoices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_0

    .line 216
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v7, Landroid/app/Dialog;

    iget-object v8, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    sget v9, Lcom/youku/phone/R$style;->uik_imagesavedialog:I

    invoke-direct {v7, v8, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lc8/ZOf;->mDialog:Landroid/app/Dialog;

    .line 188
    iget-object v7, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 189
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v7, Lcom/youku/phone/R$layout;->uik_image_save_dialog:I

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 191
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v7, p0, Lc8/ZOf;->mChoices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 193
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    sget v7, Lcom/youku/phone/R$layout;->uik_image_save_choice:I

    invoke-virtual {v2, v7, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 195
    .local v5, "textView":Landroid/widget/TextView;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 196
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v7, p0, Lc8/ZOf;->mChoices:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/XOf;

    .line 198
    .local v0, "callback":Lc8/XOf;
    new-instance v7, Lc8/WOf;

    invoke-direct {v7, p0, v0}, Lc8/WOf;-><init>(Lc8/ZOf;Lc8/XOf;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 209
    sget v7, Lcom/youku/phone/R$layout;->uik_choice_divider:I

    invoke-virtual {v2, v7, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 214
    .end local v0    # "callback":Lc8/XOf;
    .end local v1    # "divider":Landroid/view/View;
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lc8/ZOf;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 215
    iget-object v7, p0, Lc8/ZOf;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public addDialogChoice(Ljava/lang/String;Lc8/XOf;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/XOf;

    .prologue
    .line 175
    iget-object v0, p0, Lc8/ZOf;->mChoices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public afterDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    return-void
.end method

.method public afterOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    return-void
.end method

.method public afterPerformLongClick()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    return-void
.end method

.method public beforeOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    iget-object v2, p0, Lc8/ZOf;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/ZOf;->mActive:Z

    goto :goto_0

    .line 128
    :pswitch_2
    iput-boolean v5, p0, Lc8/ZOf;->mActive:Z

    .line 129
    invoke-direct {p0}, Lc8/ZOf;->dismissDialog()V

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lc8/ZOf;->mStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    .line 134
    .local v0, "dxx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lc8/ZOf;->mStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    .line 135
    .local v1, "dyy":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 137
    :cond_1
    iput-boolean v5, p0, Lc8/ZOf;->mActive:Z

    .line 140
    invoke-direct {p0}, Lc8/ZOf;->dismissDialog()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public beforePerformLongClick()V
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lc8/ZOf;->mActive:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lc8/ZOf;->showDialog()V

    .line 111
    :cond_0
    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 167
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 313
    const/16 v0, 0x5de

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 315
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lc8/ZOf;->mSaveBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lc8/ZOf;->saveImageFile(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 317
    :cond_0
    return-void
.end method

.method public saveImageFile(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 324
    iget-object v0, p0, Lc8/ZOf;->mSaveFileTask:Lc8/YOf;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lc8/ZOf;->mSaveFileTask:Lc8/YOf;

    invoke-virtual {v1}, Lc8/YOf;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 326
    :cond_0
    new-instance v0, Lc8/YOf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/YOf;-><init>(Lc8/ZOf;Lc8/VOf;)V

    iput-object v0, p0, Lc8/ZOf;->mSaveFileTask:Lc8/YOf;

    .line 327
    iget-object v0, p0, Lc8/ZOf;->mSaveFileTask:Lc8/YOf;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lc8/YOf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    :cond_1
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 65
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "x0":Landroid/view/View;
    invoke-virtual {p0, p1}, Lc8/ZOf;->setHost(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "host"    # Landroid/widget/ImageView;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lc8/SOf;->setHost(Landroid/view/View;)V

    .line 92
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/ZOf;->mChoices:Ljava/util/HashMap;

    iget-object v1, p0, Lc8/ZOf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->uik_save_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/VOf;

    invoke-direct {v2, p0}, Lc8/VOf;-><init>(Lc8/ZOf;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-void
.end method
