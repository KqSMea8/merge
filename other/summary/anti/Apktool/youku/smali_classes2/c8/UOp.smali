.class public synthetic Lc8/UOp;
.super Ljava/lang/Object;
.source "AbstractNetworkConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/VOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lmtopsdk/mtop/domain/EnvModeEnum;->values()[Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc8/UOp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    :try_start_0
    sget-object v0, Lc8/UOp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lc8/UOp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lc8/UOp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lc8/UOp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method