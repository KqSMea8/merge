.class public Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;
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
    name = "SUSEntity"
.end annotation


# instance fields
.field private SDK:Ljava/lang/String;

.field private U:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;->U:Ljava/lang/String;

    return-object v0
.end method

.method public setSDK(Ljava/lang/String;)V
    .locals 0
    .param p1, "SDK"    # Ljava/lang/String;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;->SDK:Ljava/lang/String;

    .line 796
    return-void
.end method

.method public setU(Ljava/lang/String;)V
    .locals 0
    .param p1, "U"    # Ljava/lang/String;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;->U:Ljava/lang/String;

    .line 788
    return-void
.end method
