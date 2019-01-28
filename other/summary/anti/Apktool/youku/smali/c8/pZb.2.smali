.class public Lc8/pZb;
.super Ljava/lang/Object;
.source "StandOutFlags.java"


# static fields
.field public static final FLAG_ADD_FUNCTIONALITY_ALL_DISABLE:I

.field public static final FLAG_ADD_FUNCTIONALITY_DROP_DOWN_DISABLE:I

.field public static final FLAG_ADD_FUNCTIONALITY_RESIZE_DISABLE:I

.field public static final FLAG_BODY_MOVE_ENABLE:I

.field public static final FLAG_DECORATION_CLOSE_DISABLE:I

.field public static final FLAG_DECORATION_MAXIMIZE_DISABLE:I

.field public static final FLAG_DECORATION_MOVE_DISABLE:I

.field public static final FLAG_DECORATION_RESIZE_DISABLE:I

.field public static final FLAG_DECORATION_SYSTEM:I

.field public static final FLAG_FIX_COMPATIBILITY_ALL_DISABLE:I

.field public static final FLAG_WINDOW_ASPECT_RATIO_ENABLE:I

.field public static final FLAG_WINDOW_BRING_TO_FRONT_ON_TAP:I

.field public static final FLAG_WINDOW_BRING_TO_FRONT_ON_TOUCH:I

.field public static final FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

.field public static final FLAG_WINDOW_FOCUSABLE_DISABLE:I

.field public static final FLAG_WINDOW_FOCUS_INDICATOR_DISABLE:I

.field public static final FLAG_WINDOW_HIDE_ENABLE:I

.field public static final FLAG_WINDOW_PINCH_RESIZE_ENABLE:I

.field private static flag_bit:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 16
    const/4 v0, 0x0

    sput v0, Lc8/pZb;->flag_bit:I

    .line 22
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    .line 31
    sput v0, Lc8/pZb;->FLAG_DECORATION_SYSTEM:I

    sget v1, Lc8/pZb;->flag_bit:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lc8/pZb;->flag_bit:I

    shl-int v1, v3, v1

    or-int/2addr v0, v1

    sput v0, Lc8/pZb;->FLAG_DECORATION_CLOSE_DISABLE:I

    .line 41
    sget v0, Lc8/pZb;->FLAG_DECORATION_SYSTEM:I

    sget v1, Lc8/pZb;->flag_bit:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lc8/pZb;->flag_bit:I

    shl-int v1, v3, v1

    or-int/2addr v0, v1

    sput v0, Lc8/pZb;->FLAG_DECORATION_RESIZE_DISABLE:I

    .line 51
    sget v0, Lc8/pZb;->FLAG_DECORATION_SYSTEM:I

    sget v1, Lc8/pZb;->flag_bit:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lc8/pZb;->flag_bit:I

    shl-int v1, v3, v1

    or-int/2addr v0, v1

    sput v0, Lc8/pZb;->FLAG_DECORATION_MAXIMIZE_DISABLE:I

    .line 61
    sget v0, Lc8/pZb;->FLAG_DECORATION_SYSTEM:I

    sget v1, Lc8/pZb;->flag_bit:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lc8/pZb;->flag_bit:I

    shl-int v1, v3, v1

    or-int/2addr v0, v1

    sput v0, Lc8/pZb;->FLAG_DECORATION_MOVE_DISABLE:I

    .line 72
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_BODY_MOVE_ENABLE:I

    .line 82
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_WINDOW_HIDE_ENABLE:I

    .line 93
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_WINDOW_BRING_TO_FRONT_ON_TOUCH:I

    .line 104
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_WINDOW_BRING_TO_FRONT_ON_TAP:I

    .line 118
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    .line 132
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_WINDOW_ASPECT_RATIO_ENABLE:I

    .line 140
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_WINDOW_PINCH_RESIZE_ENABLE:I

    .line 160
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_WINDOW_FOCUSABLE_DISABLE:I

    .line 171
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_WINDOW_FOCUS_INDICATOR_DISABLE:I

    .line 181
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_FIX_COMPATIBILITY_ALL_DISABLE:I

    .line 191
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_ADD_FUNCTIONALITY_ALL_DISABLE:I

    .line 203
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_ADD_FUNCTIONALITY_RESIZE_DISABLE:I

    .line 216
    sget v0, Lc8/pZb;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc8/pZb;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lc8/pZb;->FLAG_ADD_FUNCTIONALITY_DROP_DOWN_DISABLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
