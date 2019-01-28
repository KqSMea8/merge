.class public Lc8/Pdc;
.super Landroid/widget/ImageView;
.source "BallImageView.java"


# static fields
.field public static mScreenHeight:I

.field public static mScreenWidth:I


# instance fields
.field public currentX:F

.field public currentY:F

.field public radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput v0, Lc8/Pdc;->mScreenWidth:I

    .line 15
    sput v0, Lc8/Pdc;->mScreenHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v2, 0x0

    iput v2, p0, Lc8/Pdc;->radius:F

    .line 19
    const/high16 v2, 0x42200000    # 40.0f

    iput v2, p0, Lc8/Pdc;->currentX:F

    .line 20
    const/high16 v2, 0x42480000    # 50.0f

    iput v2, p0, Lc8/Pdc;->currentY:F

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 25
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lc8/Pdc;->mScreenWidth:I

    .line 26
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lc8/Pdc;->mScreenHeight:I

    .line 27
    const-string/jumbo v2, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "displayMetrics.widthPixels: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lc8/Pdc;->mScreenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " displayMetrics.heightPixels: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lc8/Pdc;->mScreenHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .local v1, "rect":Landroid/graphics/Rect;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sput v2, Lc8/Pdc;->mScreenHeight:I

    .line 33
    const-string/jumbo v2, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWindowVisibleDisplayFrame.width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " getWindowVisibleDisplayFrame.height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public autoMouse(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "rb":Z
    invoke-virtual {p0}, Lc8/Pdc;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lc8/Pdc;->radius:F

    .line 43
    const-string/jumbo v2, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v1, v0

    .line 63
    :cond_0
    return v1

    .line 49
    :pswitch_1
    iget v1, p0, Lc8/Pdc;->radius:F

    iput v1, p0, Lc8/Pdc;->currentX:F

    .line 50
    sget v1, Lc8/Pdc;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lc8/Pdc;->radius:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lc8/Pdc;->currentY:F

    .line 51
    iget v1, p0, Lc8/Pdc;->currentX:F

    float-to-int v1, v1

    iget v2, p0, Lc8/Pdc;->currentY:F

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lc8/Pdc;->setLocation(II)V

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v5

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lc8/Pdc;->mScreenWidth:I

    invoke-virtual {p0}, Lc8/Pdc;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v5

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lc8/Pdc;->mScreenHeight:I

    invoke-virtual {p0}, Lc8/Pdc;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lc8/Pdc;->setLocation(II)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setLocation(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 37
    invoke-virtual {p0}, Lc8/Pdc;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lc8/Pdc;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lc8/Pdc;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lc8/Pdc;->setFrame(IIII)Z

    .line 38
    return-void
.end method
