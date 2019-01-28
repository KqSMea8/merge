.class public Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;
.super Ljava/lang/Object;
.source "ADInfoDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YEEntity"
.end annotation


# instance fields
.field private LAS:Ljava/lang/String;

.field private LAV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLAS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;->LAS:Ljava/lang/String;

    return-object v0
.end method

.method public getLAV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;->LAV:Ljava/lang/String;

    return-object v0
.end method

.method public setLAS(Ljava/lang/String;)V
    .locals 0
    .param p1, "LAS"    # Ljava/lang/String;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;->LAS:Ljava/lang/String;

    .line 647
    return-void
.end method

.method public setLAV(Ljava/lang/String;)V
    .locals 0
    .param p1, "LAV"    # Ljava/lang/String;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;->LAV:Ljava/lang/String;

    .line 655
    return-void
.end method
