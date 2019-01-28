.class public Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;
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
    name = "SUEntity"
.end annotation


# instance fields
.field private SDK:Ljava/lang/String;

.field private T:I

.field private U:Ljava/lang/String;

.field public hasExposed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public getT()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;->T:I

    return v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;->U:Ljava/lang/String;

    return-object v0
.end method

.method public setSDK(Ljava/lang/String;)V
    .locals 0
    .param p1, "SDK"    # Ljava/lang/String;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;->SDK:Ljava/lang/String;

    .line 763
    return-void
.end method

.method public setT(I)V
    .locals 0
    .param p1, "T"    # I

    .prologue
    .line 754
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;->T:I

    .line 755
    return-void
.end method

.method public setU(Ljava/lang/String;)V
    .locals 0
    .param p1, "U"    # Ljava/lang/String;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;->U:Ljava/lang/String;

    .line 747
    return-void
.end method
