.class public Lc8/ofb;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nfb;,
        Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    }
.end annotation


# instance fields
.field private final end:Lc8/Rdb;

.field private final name:Ljava/lang/String;

.field private final offset:Lc8/Rdb;

.field private final start:Lc8/Rdb;

.field private final type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .param p3, "start"    # Lc8/Rdb;
    .param p4, "end"    # Lc8/Rdb;
    .param p5, "offset"    # Lc8/Rdb;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/ofb;->name:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lc8/ofb;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 40
    iput-object p3, p0, Lc8/ofb;->start:Lc8/Rdb;

    .line 41
    iput-object p4, p0, Lc8/ofb;->end:Lc8/Rdb;

    .line 42
    iput-object p5, p0, Lc8/ofb;->offset:Lc8/Rdb;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/mfb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .param p3, "x2"    # Lc8/Rdb;
    .param p4, "x3"    # Lc8/Rdb;
    .param p5, "x4"    # Lc8/Rdb;
    .param p6, "x5"    # Lc8/mfb;

    .prologue
    .line 12
    invoke-direct/range {p0 .. p5}, Lc8/ofb;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;)V

    return-void
.end method


# virtual methods
.method public getEnd()Lc8/Rdb;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/ofb;->end:Lc8/Rdb;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/ofb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lc8/Rdb;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/ofb;->offset:Lc8/Rdb;

    return-object v0
.end method

.method public getStart()Lc8/Rdb;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc8/ofb;->start:Lc8/Rdb;

    return-object v0
.end method

.method public getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc8/ofb;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 66
    new-instance v0, Lc8/adb;

    invoke-direct {v0, p2, p0}, Lc8/adb;-><init>(Lc8/rfb;Lc8/ofb;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ofb;->start:Lc8/Rdb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ofb;->end:Lc8/Rdb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ofb;->offset:Lc8/Rdb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
