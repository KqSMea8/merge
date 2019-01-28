.class public Lcom/youku/phone/detail/cms/dto/PayInfoDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "PayInfoDTO.java"


# instance fields
.field protected className:Ljava/lang/String;

.field public price:Ljava/math/BigDecimal;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 20
    const-string/jumbo v0, "com.youku.haibao.client.dto.PayInfoDTO"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/PayInfoDTO;->className:Ljava/lang/String;

    return-void
.end method
