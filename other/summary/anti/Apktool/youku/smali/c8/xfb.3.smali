.class public Lc8/xfb;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wfb;,
        Lcom/airbnb/lottie/model/layer/Layer$MatteType;,
        Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final composition:Lc8/kcb;

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Meb;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ceb;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startProgress:F

.field private final text:Lc8/oeb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final textProperties:Lc8/qeb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final timeRemapping:Lc8/Rdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final timeStretch:F

.field private final transform:Lc8/teb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lc8/xfb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/xfb;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lc8/kcb;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lc8/teb;IIIFFIILc8/oeb;Lc8/qeb;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lc8/Rdb;)V
    .locals 1
    .param p2, "composition"    # Lc8/kcb;
    .param p3, "layerName"    # Ljava/lang/String;
    .param p4, "layerId"    # J
    .param p6, "layerType"    # Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .param p7, "parentId"    # J
    .param p9, "refId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "transform"    # Lc8/teb;
    .param p12, "solidWidth"    # I
    .param p13, "solidHeight"    # I
    .param p14, "solidColor"    # I
    .param p15, "timeStretch"    # F
    .param p16, "startProgress"    # F
    .param p17, "preCompWidth"    # I
    .param p18, "preCompHeight"    # I
    .param p19, "text"    # Lc8/oeb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p20, "textProperties"    # Lc8/qeb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p22, "matteType"    # Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .param p23, "timeRemapping"    # Lc8/Rdb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ceb;",
            ">;",
            "Lc8/kcb;",
            "Ljava/lang/String;",
            "J",
            "Lcom/airbnb/lottie/model/layer/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Meb;",
            ">;",
            "Lc8/teb;",
            "IIIFFII",
            "Lc8/oeb;",
            "Lc8/qeb;",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/airbnb/lottie/model/layer/Layer$MatteType;",
            "Lc8/Rdb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .local p10, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .local p21, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lc8/xfb;->shapes:Ljava/util/List;

    .line 79
    iput-object p2, p0, Lc8/xfb;->composition:Lc8/kcb;

    .line 80
    iput-object p3, p0, Lc8/xfb;->layerName:Ljava/lang/String;

    .line 81
    iput-wide p4, p0, Lc8/xfb;->layerId:J

    .line 82
    iput-object p6, p0, Lc8/xfb;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 83
    iput-wide p7, p0, Lc8/xfb;->parentId:J

    .line 84
    iput-object p9, p0, Lc8/xfb;->refId:Ljava/lang/String;

    .line 85
    iput-object p10, p0, Lc8/xfb;->masks:Ljava/util/List;

    .line 86
    iput-object p11, p0, Lc8/xfb;->transform:Lc8/teb;

    .line 87
    iput p12, p0, Lc8/xfb;->solidWidth:I

    .line 88
    iput p13, p0, Lc8/xfb;->solidHeight:I

    .line 89
    iput p14, p0, Lc8/xfb;->solidColor:I

    .line 90
    move/from16 v0, p15

    iput v0, p0, Lc8/xfb;->timeStretch:F

    .line 91
    move/from16 v0, p16

    iput v0, p0, Lc8/xfb;->startProgress:F

    .line 92
    move/from16 v0, p17

    iput v0, p0, Lc8/xfb;->preCompWidth:I

    .line 93
    move/from16 v0, p18

    iput v0, p0, Lc8/xfb;->preCompHeight:I

    .line 94
    move-object/from16 v0, p19

    iput-object v0, p0, Lc8/xfb;->text:Lc8/oeb;

    .line 95
    move-object/from16 v0, p20

    iput-object v0, p0, Lc8/xfb;->textProperties:Lc8/qeb;

    .line 96
    move-object/from16 v0, p21

    iput-object v0, p0, Lc8/xfb;->inOutKeyframes:Ljava/util/List;

    .line 97
    move-object/from16 v0, p22

    iput-object v0, p0, Lc8/xfb;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 98
    move-object/from16 v0, p23

    iput-object v0, p0, Lc8/xfb;->timeRemapping:Lc8/Rdb;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lc8/kcb;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lc8/teb;IIIFFIILc8/oeb;Lc8/qeb;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lc8/Rdb;Lc8/vfb;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lc8/kcb;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .param p7, "x5"    # J
    .param p9, "x6"    # Ljava/lang/String;
    .param p10, "x7"    # Ljava/util/List;
    .param p11, "x8"    # Lc8/teb;
    .param p12, "x9"    # I
    .param p13, "x10"    # I
    .param p14, "x11"    # I
    .param p15, "x12"    # F
    .param p16, "x13"    # F
    .param p17, "x14"    # I
    .param p18, "x15"    # I
    .param p19, "x16"    # Lc8/oeb;
    .param p20, "x17"    # Lc8/qeb;
    .param p21, "x18"    # Ljava/util/List;
    .param p22, "x19"    # Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .param p23, "x20"    # Lc8/Rdb;
    .param p24, "x21"    # Lc8/vfb;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p23}, Lc8/xfb;-><init>(Ljava/util/List;Lc8/kcb;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lc8/teb;IIIFFIILc8/oeb;Lc8/qeb;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lc8/Rdb;)V

    return-void
.end method


# virtual methods
.method getComposition()Lc8/kcb;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lc8/xfb;->composition:Lc8/kcb;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lc8/xfb;->layerId:J

    return-wide v0
.end method

.method getInOutKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lc8/xfb;->inOutKeyframes:Ljava/util/List;

    return-object v0
.end method

.method public getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lc8/xfb;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    return-object v0
.end method

.method getMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Meb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lc8/xfb;->masks:Ljava/util/List;

    return-object v0
.end method

.method getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lc8/xfb;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lc8/xfb;->layerName:Ljava/lang/String;

    return-object v0
.end method

.method getParentId()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lc8/xfb;->parentId:J

    return-wide v0
.end method

.method getPreCompHeight()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lc8/xfb;->preCompHeight:I

    return v0
.end method

.method getPreCompWidth()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lc8/xfb;->preCompWidth:I

    return v0
.end method

.method getRefId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lc8/xfb;->refId:Ljava/lang/String;

    return-object v0
.end method

.method getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Ceb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lc8/xfb;->shapes:Ljava/util/List;

    return-object v0
.end method

.method getSolidColor()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lc8/xfb;->solidColor:I

    return v0
.end method

.method getSolidHeight()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lc8/xfb;->solidHeight:I

    return v0
.end method

.method getSolidWidth()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lc8/xfb;->solidWidth:I

    return v0
.end method

.method getStartProgress()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lc8/xfb;->startProgress:F

    return v0
.end method

.method getText()Lc8/oeb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lc8/xfb;->text:Lc8/oeb;

    return-object v0
.end method

.method getTextProperties()Lc8/qeb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lc8/xfb;->textProperties:Lc8/qeb;

    return-object v0
.end method

.method getTimeRemapping()Lc8/Rdb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lc8/xfb;->timeRemapping:Lc8/Rdb;

    return-object v0
.end method

.method getTimeStretch()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lc8/xfb;->timeStretch:F

    return v0
.end method

.method getTransform()Lc8/teb;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lc8/xfb;->transform:Lc8/teb;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lc8/xfb;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lc8/xfb;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v3, p0, Lc8/xfb;->composition:Lc8/kcb;

    invoke-virtual {p0}, Lc8/xfb;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lc8/kcb;->layerModelForId(J)Lc8/xfb;

    move-result-object v0

    .line 193
    .local v0, "parent":Lc8/xfb;
    if-eqz v0, :cond_1

    .line 194
    const-string/jumbo v3, "\t\tParents: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lc8/xfb;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v3, p0, Lc8/xfb;->composition:Lc8/kcb;

    invoke-virtual {v0}, Lc8/xfb;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lc8/kcb;->layerModelForId(J)Lc8/xfb;

    move-result-object v0

    .line 196
    :goto_0
    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lc8/xfb;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v3, p0, Lc8/xfb;->composition:Lc8/kcb;

    invoke-virtual {v0}, Lc8/xfb;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lc8/kcb;->layerModelForId(J)Lc8/xfb;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    invoke-virtual {p0}, Lc8/xfb;->getMasks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\tMasks: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lc8/xfb;->getMasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_2
    invoke-virtual {p0}, Lc8/xfb;->getSolidWidth()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lc8/xfb;->getSolidHeight()I

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\tBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%dx%d %X\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 207
    invoke-virtual {p0}, Lc8/xfb;->getSolidWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lc8/xfb;->getSolidHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Lc8/xfb;->getSolidColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_3
    iget-object v3, p0, Lc8/xfb;->shapes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 210
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\tShapes:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v3, p0, Lc8/xfb;->shapes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 212
    .local v2, "shape":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 215
    .end local v2    # "shape":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
