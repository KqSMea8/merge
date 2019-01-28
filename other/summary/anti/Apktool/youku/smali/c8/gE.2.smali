.class public Lc8/gE;
.super Ljava/lang/Object;
.source "WVJsbridgeService.java"


# static fields
.field private static mAyncPreprocessor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/UD;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreprocessor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/dE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/gE;->mPreprocessor:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/gE;->mAyncPreprocessor:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJSBridgePreprocessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/dE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lc8/gE;->mPreprocessor:Ljava/util/List;

    return-object v0
.end method

.method public static getJSBridgeayncPreprocessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/UD;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lc8/gE;->mAyncPreprocessor:Ljava/util/List;

    return-object v0
.end method

.method public static registerJsbridgePreprocessor(Lc8/UD;)V
    .locals 1
    .param p0, "preprocessor"    # Lc8/UD;

    .prologue
    .line 38
    sget-object v0, Lc8/gE;->mAyncPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public static registerJsbridgePreprocessor(Lc8/dE;)V
    .locals 1
    .param p0, "preprocessor"    # Lc8/dE;

    .prologue
    .line 50
    sget-object v0, Lc8/gE;->mPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public static unregisterPreprocessor(Lc8/UD;)V
    .locals 1
    .param p0, "preprocessor"    # Lc8/UD;

    .prologue
    .line 30
    sget-object v0, Lc8/gE;->mAyncPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public static unregisterPreprocessor(Lc8/dE;)V
    .locals 1
    .param p0, "preprocessor"    # Lc8/dE;

    .prologue
    .line 42
    sget-object v0, Lc8/gE;->mPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method
