.class public Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;
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
    name = "CUMEntity"
.end annotation


# instance fields
.field private SDK:Ljava/lang/String;

.field private U:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;->U:Ljava/lang/String;

    return-object v0
.end method

.method public setSDK(Ljava/lang/String;)V
    .locals 0
    .param p1, "SDK"    # Ljava/lang/String;

    .prologue
    .line 861
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;->SDK:Ljava/lang/String;

    .line 862
    return-void
.end method

.method public setU(Ljava/lang/String;)V
    .locals 0
    .param p1, "U"    # Ljava/lang/String;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;->U:Ljava/lang/String;

    .line 854
    return-void
.end method
