.class public Lc8/iZb;
.super Ljava/lang/Object;
.source "PopLayerConsole.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/poplayerconsole/PopLayerConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntercepterLsn"
.end annotation


# instance fields
.field private final SELECT_DRAWABLE:Landroid/graphics/drawable/Drawable;

.field private mPreViews:[Landroid/view/View;

.field final synthetic this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;


# direct methods
.method private constructor <init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;)V
    .locals 2

    .prologue
    .line 242
    iput-object p1, p0, Lc8/iZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x78000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lc8/iZb;->SELECT_DRAWABLE:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/aZb;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/poplayerconsole/PopLayerConsole;
    .param p2, "x1"    # Lc8/aZb;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lc8/iZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 253
    .local v5, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    .line 254
    .local v6, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    :pswitch_0
    return v12

    .line 256
    :pswitch_1
    iget-object v7, p0, Lc8/iZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v7}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$400(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/DYb;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lc8/DYb;->selectViewContainsPosition(II)[Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lc8/iZb;->mPreViews:[Landroid/view/View;

    .line 257
    iget-object v0, p0, Lc8/iZb;->mPreViews:[Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 258
    .local v4, "view":Landroid/view/View;
    sget v7, Lcom/youku/phone/R$id;->poplayer_console_register_background_tag_id:I

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 259
    iget-object v7, p0, Lc8/iZb;->SELECT_DRAWABLE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 261
    const-string/jumbo v7, "Selector is : \r\n %s "

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/iZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    const/4 v11, 0x5

    invoke-static {v10, v4, v11}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$500(Lcom/alibaba/poplayerconsole/PopLayerConsole;Landroid/view/View;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "view":Landroid/view/View;
    :pswitch_2
    iget-object v0, p0, Lc8/iZb;->mPreViews:[Landroid/view/View;

    .restart local v0    # "arr$":[Landroid/view/View;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 268
    .restart local v4    # "view":Landroid/view/View;
    sget v7, Lcom/youku/phone/R$id;->poplayer_console_register_background_tag_id:I

    invoke-virtual {v4, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 269
    .local v1, "bkg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 271
    .end local v1    # "bkg":Landroid/graphics/drawable/Drawable;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Lc8/iZb;->mPreViews:[Landroid/view/View;

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
