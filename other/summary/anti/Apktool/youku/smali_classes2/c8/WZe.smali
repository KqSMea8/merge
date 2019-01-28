.class public Lc8/WZe;
.super Ljava/lang/Object;
.source "DinamicConstant.java"


# static fields
.field public static final CONSTANT_PREFIX:Ljava/lang/String; = "const"

.field public static final DATA_PREFIX:Ljava/lang/String; = "data"

.field public static final DEFAULT_TEMPLATE_TYPE:Ljava/lang/String; = "layout"

.field public static final DINAMIC_PREFIX_CHAR:C = '$'

.field public static final DONOT_NEED_BIND_CHILD:Ljava/lang/String; = "noneNeedBindChild"

.field public static final D_COUNT_DOWN_TIMER_VIEW:Ljava/lang/String; = "DCountDownTimerView"

.field public static final D_FRAME_LAYOUT:Ljava/lang/String; = "DFrameLayout"

.field public static final D_IMAGE_VIEW:Ljava/lang/String; = "DImageView"

.field public static final D_LINEAR_LAYOUT:Ljava/lang/String; = "DLinearLayout"

.field public static final D_TEXT_VIEW:Ljava/lang/String; = "DTextView"

.field public static final D_VIEW:Ljava/lang/String; = "DView"

.field public static final EMPTY_VIEW_TYPE:I = -0x1

.field public static final FESTIVAL_PREFIX:Ljava/lang/String; = "festival"

.field public static final PROPERTY_KEY:I

.field public static final RES_AUTO_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/youku/phone/R$id;->dinamicPropertyTag:I

    sput v0, Lc8/WZe;->PROPERTY_KEY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
