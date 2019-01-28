.class public Lcom/alibaba/analytics/core/config/UTTPKItem;
.super Ljava/lang/Object;
.source "UTTPKItem.java"


# static fields
.field public static final TYPE_FAR:Ljava/lang/String; = "far"

.field public static final TYPE_NEARBY:Ljava/lang/String; = "nearby"


# instance fields
.field private mKname:Ljava/lang/String;

.field private mKvalue:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKItem;->mKname:Ljava/lang/String;

    return-object v0
.end method

.method public getKvalue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKItem;->mKvalue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setKname(Ljava/lang/String;)V
    .locals 0
    .param p1, "aKname"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/analytics/core/config/UTTPKItem;->mKname:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setKvalue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aKvalue"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/analytics/core/config/UTTPKItem;->mKvalue:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "aType"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/analytics/core/config/UTTPKItem;->mType:Ljava/lang/String;

    .line 27
    return-void
.end method
