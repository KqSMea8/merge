.class public Lc8/Nyo;
.super Ljava/lang/Object;
.source "HomeUtil.java"


# static fields
.field public static final IMAGE10:I = 0xa

.field public static final IMAGE7:I = 0x7

.field public static final IMAGE8:I = 0x8

.field public static final IMAGE9:I = 0x9

.field public static final LAYOUT1:I = 0x1

.field public static final LAYOUT2:I = 0x2

.field public static final LAYOUT3:I = 0x3

.field public static final LAYOUT4:I = 0x4

.field public static final LAYOUT5:I = 0x5

.field public static final LAYOUT6:I = 0x6

.field public static final PImageHeight:I = 0x20a

.field public static final PImageHeight_HALF:I = 0xd3

.field public static final PImageWidth:I = 0x300

.field public static final PImageWidth_HALF:I = 0x178

.field public static final PLayoutHeight:I = 0x25e

.field public static final PLayoutHeight_HALF:I = 0x127

.field public static final PLayoutHeight_Text:I = 0x5d

.field public static final PLayoutWidth:I = 0x300

.field public static final PLayoutWidth_HALF:I = 0x178

.field public static currentClickTime:J

.field public static heightspan:I

.field public static image_height:I

.field public static image_height_half:I

.field public static image_width:I

.field public static image_width_half:I

.field public static isMeasure:Z

.field public static lastClickTime:J

.field public static layout_height:I

.field public static layout_height_half:I

.field public static layout_height_text:I

.field public static layout_width:I

.field public static layout_width_half:I

.field public static widthspan:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Nyo;->isMeasure:Z

    .line 210
    sput-wide v2, Lc8/Nyo;->lastClickTime:J

    .line 212
    sput-wide v2, Lc8/Nyo;->currentClickTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Measure(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "type"    # I

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->homepage_item_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lc8/Nyo;->heightspan:I

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->homepage_item_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lc8/Nyo;->widthspan:I

    .line 155
    invoke-static {p1, p2}, Lc8/Nyo;->MeasureVertical(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {p0}, Lc8/Nyo;->onError(Landroid/content/Context;)V

    .line 158
    :cond_0
    invoke-static {}, Lc8/Nyo;->checkData()V

    .line 160
    return-void
.end method

.method private static MeasureVertical(II)Z
    .locals 1
    .param p0, "width"    # I
    .param p1, "type"    # I

    .prologue
    .line 173
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    if-eqz p0, :cond_0

    .line 174
    sput p0, Lc8/Nyo;->layout_width:I

    .line 176
    mul-int/lit16 v0, p0, 0x25e

    div-int/lit16 v0, v0, 0x300

    sput v0, Lc8/Nyo;->layout_height:I

    .line 177
    sget v0, Lc8/Nyo;->widthspan:I

    sub-int v0, p0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lc8/Nyo;->layout_width_half:I

    .line 178
    sget v0, Lc8/Nyo;->layout_width_half:I

    mul-int/lit16 v0, v0, 0x127

    div-int/lit16 v0, v0, 0x178

    sput v0, Lc8/Nyo;->layout_height_half:I

    .line 180
    sget v0, Lc8/Nyo;->layout_width_half:I

    mul-int/lit8 v0, v0, 0x5d

    div-int/lit16 v0, v0, 0x178

    sput v0, Lc8/Nyo;->layout_height_text:I

    .line 183
    sget v0, Lc8/Nyo;->layout_width_half:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lc8/Nyo;->image_width_half:I

    .line 184
    sget v0, Lc8/Nyo;->layout_width:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lc8/Nyo;->image_width:I

    .line 185
    sget v0, Lc8/Nyo;->image_width_half:I

    mul-int/lit16 v0, v0, 0xd3

    div-int/lit16 v0, v0, 0x178

    sput v0, Lc8/Nyo;->image_height_half:I

    .line 187
    sget v0, Lc8/Nyo;->image_width_half:I

    mul-int/lit16 v0, v0, 0x20a

    div-int/lit16 v0, v0, 0x178

    sput v0, Lc8/Nyo;->image_height:I

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkData()V
    .locals 3

    .prologue
    .line 195
    sget v0, Lc8/Nyo;->image_height:I

    sget v1, Lc8/Nyo;->image_height_half:I

    shl-int/lit8 v1, v1, 0x1

    sget v2, Lc8/Nyo;->layout_height_text:I

    add-int/2addr v1, v2

    sget v2, Lc8/Nyo;->heightspan:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 197
    const-string/jumbo v0, "HomeUtil"

    const-string/jumbo v1, "error >"

    invoke-static {v0, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget v0, Lc8/Nyo;->image_height_half:I

    shl-int/lit8 v0, v0, 0x1

    sget v1, Lc8/Nyo;->layout_height_text:I

    add-int/2addr v0, v1

    sget v1, Lc8/Nyo;->heightspan:I

    add-int/2addr v0, v1

    sput v0, Lc8/Nyo;->image_height:I

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    sget v0, Lc8/Nyo;->image_height:I

    sget v1, Lc8/Nyo;->image_height_half:I

    shl-int/lit8 v1, v1, 0x1

    sget v2, Lc8/Nyo;->layout_height_text:I

    add-int/2addr v1, v2

    sget v2, Lc8/Nyo;->heightspan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 202
    const-string/jumbo v0, "HomeUtil"

    const-string/jumbo v1, "error <"

    invoke-static {v0, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget v0, Lc8/Nyo;->image_height_half:I

    shl-int/lit8 v0, v0, 0x1

    sget v1, Lc8/Nyo;->layout_height_text:I

    add-int/2addr v0, v1

    sget v1, Lc8/Nyo;->heightspan:I

    add-int/2addr v0, v1

    sput v0, Lc8/Nyo;->image_height:I

    goto :goto_0
.end method

.method public static clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput v0, Lc8/Nyo;->widthspan:I

    .line 72
    sput v0, Lc8/Nyo;->layout_height:I

    .line 73
    sput v0, Lc8/Nyo;->layout_width_half:I

    .line 74
    sput v0, Lc8/Nyo;->layout_height_half:I

    .line 75
    sput v0, Lc8/Nyo;->layout_height_text:I

    .line 76
    sput v0, Lc8/Nyo;->image_height_half:I

    .line 77
    sput v0, Lc8/Nyo;->image_height:I

    .line 78
    sput-boolean v0, Lc8/Nyo;->isMeasure:Z

    .line 79
    return-void
.end method

.method public static getHeight(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "type"    # I

    .prologue
    .line 119
    sget-boolean v0, Lc8/Nyo;->isMeasure:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Nyo;->isMeasure:Z

    .line 121
    invoke-static {p0, p1, p2}, Lc8/Nyo;->Measure(Landroid/content/Context;II)V

    .line 123
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 125
    :pswitch_0
    sget v0, Lc8/Nyo;->layout_height_half:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :pswitch_1
    sget v0, Lc8/Nyo;->layout_height:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_2
    sget v0, Lc8/Nyo;->layout_height_half:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :pswitch_3
    sget v0, Lc8/Nyo;->layout_height:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :pswitch_4
    sget v0, Lc8/Nyo;->layout_height_text:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 135
    :pswitch_5
    sget v0, Lc8/Nyo;->layout_height_text:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    :pswitch_6
    sget v0, Lc8/Nyo;->image_height:I

    goto :goto_0

    .line 139
    :pswitch_7
    sget v0, Lc8/Nyo;->image_height_half:I

    goto :goto_0

    .line 141
    :pswitch_8
    sget v0, Lc8/Nyo;->image_height:I

    goto :goto_0

    .line 143
    :pswitch_9
    sget v0, Lc8/Nyo;->image_height_half:I

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getWidth(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 87
    :pswitch_0
    sget v0, Lc8/Nyo;->layout_width_half:I

    goto :goto_0

    .line 89
    :pswitch_1
    sget v0, Lc8/Nyo;->layout_width_half:I

    goto :goto_0

    .line 91
    :pswitch_2
    sget v0, Lc8/Nyo;->layout_width:I

    goto :goto_0

    .line 93
    :pswitch_3
    sget v0, Lc8/Nyo;->layout_width:I

    goto :goto_0

    .line 95
    :pswitch_4
    sget v0, Lc8/Nyo;->layout_width_half:I

    goto :goto_0

    .line 97
    :pswitch_5
    sget v0, Lc8/Nyo;->layout_width:I

    goto :goto_0

    .line 99
    :pswitch_6
    sget v0, Lc8/Nyo;->image_width_half:I

    goto :goto_0

    .line 101
    :pswitch_7
    sget v0, Lc8/Nyo;->image_width:I

    goto :goto_0

    .line 103
    :pswitch_8
    sget v0, Lc8/Nyo;->image_width:I

    goto :goto_0

    .line 105
    :pswitch_9
    sget v0, Lc8/Nyo;->image_width_half:I

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static onError(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const/4 v0, 0x2

    .line 164
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 165
    const/4 v0, 0x3

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v3, Lc8/Nyo;->widthspan:I

    mul-int/2addr v3, v0

    sub-int v1, v2, v3

    .line 169
    .local v1, "width":I
    const/4 v2, 0x4

    invoke-static {v1, v2}, Lc8/Nyo;->MeasureVertical(II)Z

    .line 170
    return-void
.end method
