.class public final enum Lcom/taobao/update/result/BundleUpdateStep;
.super Ljava/lang/Enum;
.source "BundleUpdateStep.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/update/result/BundleUpdateStep;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/update/result/BundleUpdateStep;

.field public static final enum STEP0:Lcom/taobao/update/result/BundleUpdateStep;

.field public static final enum STEP1:Lcom/taobao/update/result/BundleUpdateStep;

.field public static final enum STEP2:Lcom/taobao/update/result/BundleUpdateStep;

.field public static final enum STEP3:Lcom/taobao/update/result/BundleUpdateStep;

.field public static final enum STEP4:Lcom/taobao/update/result/BundleUpdateStep;

.field public static final enum STEP5:Lcom/taobao/update/result/BundleUpdateStep;

.field public static final enum STEP6:Lcom/taobao/update/result/BundleUpdateStep;

.field public static final enum STEP7:Lcom/taobao/update/result/BundleUpdateStep;

.field public static final enum STEP8:Lcom/taobao/update/result/BundleUpdateStep;


# instance fields
.field private desc:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private step:Ljava/lang/String;

.field private success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 12
    new-instance v0, Lcom/taobao/update/result/BundleUpdateStep;

    const-string/jumbo v1, "STEP0"

    const-string/jumbo v2, "MtopRequest"

    const-string/jumbo v3, "\u53d1\u9001Mtop\u8bf7\u6c42"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/taobao/update/result/BundleUpdateStep;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->STEP0:Lcom/taobao/update/result/BundleUpdateStep;

    .line 13
    new-instance v0, Lcom/taobao/update/result/BundleUpdateStep;

    const-string/jumbo v1, "STEP1"

    const-string/jumbo v2, "Request"

    const-string/jumbo v3, "\u53d1\u9001http\u8bf7\u6c42"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/taobao/update/result/BundleUpdateStep;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->STEP1:Lcom/taobao/update/result/BundleUpdateStep;

    .line 14
    new-instance v0, Lcom/taobao/update/result/BundleUpdateStep;

    const-string/jumbo v1, "STEP2"

    const-string/jumbo v2, "DiskCheck"

    const-string/jumbo v3, "\u78c1\u76d8\u7a7a\u95f4\u68c0\u67e5"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/taobao/update/result/BundleUpdateStep;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->STEP2:Lcom/taobao/update/result/BundleUpdateStep;

    .line 15
    new-instance v0, Lcom/taobao/update/result/BundleUpdateStep;

    const-string/jumbo v1, "STEP3"

    const-string/jumbo v2, "BundleDownload"

    const-string/jumbo v3, "bundle\u4e0b\u8f7d"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/taobao/update/result/BundleUpdateStep;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->STEP3:Lcom/taobao/update/result/BundleUpdateStep;

    .line 16
    new-instance v0, Lcom/taobao/update/result/BundleUpdateStep;

    const-string/jumbo v1, "STEP4"

    const-string/jumbo v2, "Renamer"

    const-string/jumbo v3, "patch\u91cd\u547d\u540d"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/taobao/update/result/BundleUpdateStep;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->STEP4:Lcom/taobao/update/result/BundleUpdateStep;

    .line 17
    new-instance v0, Lcom/taobao/update/result/BundleUpdateStep;

    const-string/jumbo v1, "STEP5"

    const/4 v2, 0x5

    const-string/jumbo v3, "PatchMerge"

    const-string/jumbo v4, "patchMerge"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/update/result/BundleUpdateStep;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->STEP5:Lcom/taobao/update/result/BundleUpdateStep;

    .line 18
    new-instance v0, Lcom/taobao/update/result/BundleUpdateStep;

    const-string/jumbo v1, "STEP6"

    const/4 v2, 0x6

    const-string/jumbo v3, "BundleInstall"

    const-string/jumbo v4, "bundle\u5b89\u88c5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/update/result/BundleUpdateStep;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->STEP6:Lcom/taobao/update/result/BundleUpdateStep;

    .line 19
    new-instance v0, Lcom/taobao/update/result/BundleUpdateStep;

    const-string/jumbo v1, "STEP7"

    const/4 v2, 0x7

    const-string/jumbo v3, "AllFinish"

    const-string/jumbo v4, "\u52a8\u6001\u90e8\u7f72\u6210\u529f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/update/result/BundleUpdateStep;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->STEP7:Lcom/taobao/update/result/BundleUpdateStep;

    .line 20
    new-instance v0, Lcom/taobao/update/result/BundleUpdateStep;

    const-string/jumbo v1, "STEP8"

    const/16 v2, 0x8

    const-string/jumbo v3, "Reboot"

    const-string/jumbo v4, "\u91cd\u542f\u6821\u9a8c"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/update/result/BundleUpdateStep;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->STEP8:Lcom/taobao/update/result/BundleUpdateStep;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/taobao/update/result/BundleUpdateStep;

    sget-object v1, Lcom/taobao/update/result/BundleUpdateStep;->STEP0:Lcom/taobao/update/result/BundleUpdateStep;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/update/result/BundleUpdateStep;->STEP1:Lcom/taobao/update/result/BundleUpdateStep;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/update/result/BundleUpdateStep;->STEP2:Lcom/taobao/update/result/BundleUpdateStep;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/update/result/BundleUpdateStep;->STEP3:Lcom/taobao/update/result/BundleUpdateStep;

    aput-object v1, v0, v8

    sget-object v1, Lcom/taobao/update/result/BundleUpdateStep;->STEP4:Lcom/taobao/update/result/BundleUpdateStep;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/update/result/BundleUpdateStep;->STEP5:Lcom/taobao/update/result/BundleUpdateStep;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/update/result/BundleUpdateStep;->STEP6:Lcom/taobao/update/result/BundleUpdateStep;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/update/result/BundleUpdateStep;->STEP7:Lcom/taobao/update/result/BundleUpdateStep;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/update/result/BundleUpdateStep;->STEP8:Lcom/taobao/update/result/BundleUpdateStep;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/update/result/BundleUpdateStep;->$VALUES:[Lcom/taobao/update/result/BundleUpdateStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "step"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/taobao/update/result/BundleUpdateStep;->step:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/taobao/update/result/BundleUpdateStep;->desc:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/update/result/BundleUpdateStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/taobao/update/result/BundleUpdateStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/update/result/BundleUpdateStep;

    return-object v0
.end method

.method public static values()[Lcom/taobao/update/result/BundleUpdateStep;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/taobao/update/result/BundleUpdateStep;->$VALUES:[Lcom/taobao/update/result/BundleUpdateStep;

    invoke-virtual {v0}, [Lcom/taobao/update/result/BundleUpdateStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/update/result/BundleUpdateStep;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/update/result/BundleUpdateStep;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taobao/update/result/BundleUpdateStep;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taobao/update/result/BundleUpdateStep;->step:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/taobao/update/result/BundleUpdateStep;->msg:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public success(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/taobao/update/result/BundleUpdateStep;->success:Z

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/update/result/BundleUpdateStep;->step:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/update/result/BundleUpdateStep;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/update/result/BundleUpdateStep;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/update/result/BundleUpdateStep;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
