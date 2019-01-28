.class public Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;
.super Ljava/lang/Object;
.source "ADInfoDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/cms/dto/ADInfoDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VALEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;,
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;,
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;,
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;,
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;,
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;
    }
.end annotation


# instance fields
.field private AL:I

.field private AT:I

.field private BRS:Ljava/lang/String;

.field private CU:Ljava/lang/String;

.field private CUF:I

.field private CUM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;",
            ">;"
        }
    .end annotation
.end field

.field private CUU:Ljava/lang/String;

.field private EF:I

.field private EM:Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;

.field private H:I

.field private IE:Ljava/lang/String;

.field private LG:Ljava/lang/String;

.field private MN:I

.field private NB:I

.field private PC:D

.field private PD:I

.field private PR:I

.field private PRV:I

.field private PST:I

.field private RID:Ljava/lang/String;

.field private RK:I

.field private RS:Ljava/lang/String;

.field private RST:Ljava/lang/String;

.field private SHU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private SU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;",
            ">;"
        }
    .end annotation
.end field

.field private SUE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;",
            ">;"
        }
    .end annotation
.end field

.field private SUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private SUR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private SUS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;",
            ">;"
        }
    .end annotation
.end field

.field private THU:Ljava/lang/String;

.field private TI:Ljava/lang/String;

.field private TX:Ljava/lang/String;

.field private VC:Ljava/lang/String;

.field private VID:Ljava/lang/String;

.field private VN:Ljava/lang/String;

.field private VP:I

.field private VSC:Ljava/lang/String;

.field private VT:I

.field private W:I

.field private YE:Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;

.field private ZR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    return-void
.end method


# virtual methods
.method public getAL()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->AL:I

    return v0
.end method

.method public getAT()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->AT:I

    return v0
.end method

.method public getBRS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->BRS:Ljava/lang/String;

    return-object v0
.end method

.method public getCU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->CU:Ljava/lang/String;

    return-object v0
.end method

.method public getCUF()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->CUF:I

    return v0
.end method

.method public getCUM()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->CUM:Ljava/util/List;

    return-object v0
.end method

.method public getCUU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->CUU:Ljava/lang/String;

    return-object v0
.end method

.method public getEF()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->EF:I

    return v0
.end method

.method public getEM()Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->EM:Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;

    return-object v0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->H:I

    return v0
.end method

.method public getIE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->IE:Ljava/lang/String;

    return-object v0
.end method

.method public getLG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->LG:Ljava/lang/String;

    return-object v0
.end method

.method public getMN()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->MN:I

    return v0
.end method

.method public getNB()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->NB:I

    return v0
.end method

.method public getPC()D
    .locals 2

    .prologue
    .line 529
    iget-wide v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PC:D

    return-wide v0
.end method

.method public getPD()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PD:I

    return v0
.end method

.method public getPR()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PR:I

    return v0
.end method

.method public getPRV()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PRV:I

    return v0
.end method

.method public getPST()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PST:I

    return v0
.end method

.method public getRID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->RID:Ljava/lang/String;

    return-object v0
.end method

.method public getRK()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->RK:I

    return v0
.end method

.method public getRS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->RS:Ljava/lang/String;

    return-object v0
.end method

.method public getRST()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->RST:Ljava/lang/String;

    return-object v0
.end method

.method public getSHU()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SHU:Ljava/util/List;

    return-object v0
.end method

.method public getSU()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SU:Ljava/util/List;

    return-object v0
.end method

.method public getSUE()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SUE:Ljava/util/List;

    return-object v0
.end method

.method public getSUP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SUP:Ljava/util/List;

    return-object v0
.end method

.method public getSUR()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SUR:Ljava/util/List;

    return-object v0
.end method

.method public getSUS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SUS:Ljava/util/List;

    return-object v0
.end method

.method public getTHU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->THU:Ljava/lang/String;

    return-object v0
.end method

.method public getTI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->TI:Ljava/lang/String;

    return-object v0
.end method

.method public getTX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->TX:Ljava/lang/String;

    return-object v0
.end method

.method public getVC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VC:Ljava/lang/String;

    return-object v0
.end method

.method public getVID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VID:Ljava/lang/String;

    return-object v0
.end method

.method public getVN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VN:Ljava/lang/String;

    return-object v0
.end method

.method public getVP()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VP:I

    return v0
.end method

.method public getVSC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VSC:Ljava/lang/String;

    return-object v0
.end method

.method public getVT()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VT:I

    return v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->W:I

    return v0
.end method

.method public getYE()Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->YE:Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;

    return-object v0
.end method

.method public getZR()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->ZR:I

    return v0
.end method

.method public setAL(I)V
    .locals 0
    .param p1, "AL"    # I

    .prologue
    .line 405
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->AL:I

    .line 406
    return-void
.end method

.method public setAT(I)V
    .locals 0
    .param p1, "AT"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->AT:I

    .line 398
    return-void
.end method

.method public setBRS(Ljava/lang/String;)V
    .locals 0
    .param p1, "BRS"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->BRS:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setCU(Ljava/lang/String;)V
    .locals 0
    .param p1, "CU"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->CU:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setCUF(I)V
    .locals 0
    .param p1, "CUF"    # I

    .prologue
    .line 461
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->CUF:I

    .line 462
    return-void
.end method

.method public setCUM(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, "CUM":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$CUMEntity;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->CUM:Ljava/util/List;

    .line 606
    return-void
.end method

.method public setCUU(Ljava/lang/String;)V
    .locals 0
    .param p1, "CUU"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->CUU:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setEF(I)V
    .locals 0
    .param p1, "EF"    # I

    .prologue
    .line 493
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->EF:I

    .line 494
    return-void
.end method

.method public setEM(Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;)V
    .locals 0
    .param p1, "EM"    # Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->EM:Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;

    .line 414
    return-void
.end method

.method public setH(I)V
    .locals 0
    .param p1, "H"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->H:I

    .line 454
    return-void
.end method

.method public setIE(Ljava/lang/String;)V
    .locals 0
    .param p1, "IE"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->IE:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setLG(Ljava/lang/String;)V
    .locals 0
    .param p1, "LG"    # Ljava/lang/String;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->LG:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setMN(I)V
    .locals 0
    .param p1, "MN"    # I

    .prologue
    .line 549
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->MN:I

    .line 550
    return-void
.end method

.method public setNB(I)V
    .locals 0
    .param p1, "NB"    # I

    .prologue
    .line 557
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->NB:I

    .line 558
    return-void
.end method

.method public setPC(D)V
    .locals 1
    .param p1, "PC"    # D

    .prologue
    .line 533
    iput-wide p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PC:D

    .line 534
    return-void
.end method

.method public setPD(I)V
    .locals 0
    .param p1, "PD"    # I

    .prologue
    .line 565
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PD:I

    .line 566
    return-void
.end method

.method public setPR(I)V
    .locals 0
    .param p1, "PR"    # I

    .prologue
    .line 525
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PR:I

    .line 526
    return-void
.end method

.method public setPRV(I)V
    .locals 0
    .param p1, "PRV"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PRV:I

    .line 422
    return-void
.end method

.method public setPST(I)V
    .locals 0
    .param p1, "PST"    # I

    .prologue
    .line 381
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->PST:I

    .line 382
    return-void
.end method

.method public setRID(Ljava/lang/String;)V
    .locals 0
    .param p1, "RID"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->RID:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public setRK(I)V
    .locals 0
    .param p1, "RK"    # I

    .prologue
    .line 573
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->RK:I

    .line 574
    return-void
.end method

.method public setRS(Ljava/lang/String;)V
    .locals 0
    .param p1, "RS"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->RS:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setRST(Ljava/lang/String;)V
    .locals 0
    .param p1, "RST"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->RST:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setSHU(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "SHU":Ljava/util/List;, "Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SHU:Ljava/util/List;

    .line 622
    return-void
.end method

.method public setSU(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p1, "SU":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEntity;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SU:Ljava/util/List;

    .line 582
    return-void
.end method

.method public setSUE(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "SUE":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SUE:Ljava/util/List;

    .line 598
    return-void
.end method

.method public setSUP(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, "SUP":Ljava/util/List;, "Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SUP:Ljava/util/List;

    .line 614
    return-void
.end method

.method public setSUR(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "SUR":Ljava/util/List;, "Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SUR:Ljava/util/List;

    .line 630
    return-void
.end method

.method public setSUS(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "SUS":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUSEntity;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->SUS:Ljava/util/List;

    .line 590
    return-void
.end method

.method public setTHU(Ljava/lang/String;)V
    .locals 0
    .param p1, "THU"    # Ljava/lang/String;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->THU:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public setTI(Ljava/lang/String;)V
    .locals 0
    .param p1, "TI"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->TI:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setTX(Ljava/lang/String;)V
    .locals 0
    .param p1, "TX"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->TX:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setVC(Ljava/lang/String;)V
    .locals 0
    .param p1, "VC"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VC:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setVID(Ljava/lang/String;)V
    .locals 0
    .param p1, "VID"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VID:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setVN(Ljava/lang/String;)V
    .locals 0
    .param p1, "VN"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VN:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setVP(I)V
    .locals 0
    .param p1, "VP"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VP:I

    .line 334
    return-void
.end method

.method public setVSC(Ljava/lang/String;)V
    .locals 0
    .param p1, "VSC"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VSC:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setVT(I)V
    .locals 0
    .param p1, "VT"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->VT:I

    .line 310
    return-void
.end method

.method public setW(I)V
    .locals 0
    .param p1, "W"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->W:I

    .line 446
    return-void
.end method

.method public setYE(Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;)V
    .locals 0
    .param p1, "YE"    # Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->YE:Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$YEEntity;

    .line 366
    return-void
.end method

.method public setZR(I)V
    .locals 0
    .param p1, "ZR"    # I

    .prologue
    .line 541
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;->ZR:I

    .line 542
    return-void
.end method
