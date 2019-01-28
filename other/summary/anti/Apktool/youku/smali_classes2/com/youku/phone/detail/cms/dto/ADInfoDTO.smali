.class public Lcom/youku/phone/detail/cms/dto/ADInfoDTO;
.super Ljava/lang/Object;
.source "ADInfoDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$BAKEntity;,
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4e0d24411b21841L


# instance fields
.field private BAK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$BAKEntity;",
            ">;"
        }
    .end annotation
.end field

.field private MC:I

.field private ML:I

.field private P:I

.field private PS:I

.field private PT:I

.field private PTT:I

.field private SKIP:I

.field private SUSExpose:Z

.field private VAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;",
            ">;"
        }
    .end annotation
.end field

.field private VER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->SUSExpose:Z

    .line 866
    return-void
.end method


# virtual methods
.method public getBAK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$BAKEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->BAK:Ljava/util/List;

    return-object v0
.end method

.method public getMC()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->MC:I

    return v0
.end method

.method public getML()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->ML:I

    return v0
.end method

.method public getP()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->P:I

    return v0
.end method

.method public getPS()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->PS:I

    return v0
.end method

.method public getPT()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->PT:I

    return v0
.end method

.method public getPTT()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->PTT:I

    return v0
.end method

.method public getSKIP()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->SKIP:I

    return v0
.end method

.method public getVAL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->VAL:Ljava/util/List;

    return-object v0
.end method

.method public getVER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->VER:Ljava/lang/String;

    return-object v0
.end method

.method public isSUSExpose()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->SUSExpose:Z

    return v0
.end method

.method public setBAK(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$BAKEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "BAK":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ADInfoDTO$BAKEntity;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->BAK:Ljava/util/List;

    .line 163
    return-void
.end method

.method public setMC(I)V
    .locals 0
    .param p1, "MC"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->MC:I

    .line 139
    return-void
.end method

.method public setML(I)V
    .locals 0
    .param p1, "ML"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->ML:I

    .line 131
    return-void
.end method

.method public setP(I)V
    .locals 0
    .param p1, "P"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->P:I

    .line 91
    return-void
.end method

.method public setPS(I)V
    .locals 0
    .param p1, "PS"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->PS:I

    .line 107
    return-void
.end method

.method public setPT(I)V
    .locals 0
    .param p1, "PT"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->PT:I

    .line 115
    return-void
.end method

.method public setPTT(I)V
    .locals 0
    .param p1, "PTT"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->PTT:I

    .line 123
    return-void
.end method

.method public setSKIP(I)V
    .locals 0
    .param p1, "SKIP"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->SKIP:I

    .line 99
    return-void
.end method

.method public setSUSExpose(Z)V
    .locals 0
    .param p1, "SUSExpose"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->SUSExpose:Z

    .line 171
    return-void
.end method

.method public setVAL(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "VAL":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->VAL:Ljava/util/List;

    .line 155
    return-void
.end method

.method public setVER(Ljava/lang/String;)V
    .locals 0
    .param p1, "VER"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO;->VER:Ljava/lang/String;

    .line 147
    return-void
.end method
