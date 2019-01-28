.class public synthetic Lc8/AWc;
.super Ljava/lang/Object;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/EWc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$baseproject$network$YoukuAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 309
    invoke-static {}, Lcom/baseproject/network/YoukuAsyncTask$Status;->values()[Lcom/baseproject/network/YoukuAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc8/AWc;->$SwitchMap$com$baseproject$network$YoukuAsyncTask$Status:[I

    :try_start_0
    sget-object v0, Lc8/AWc;->$SwitchMap$com$baseproject$network$YoukuAsyncTask$Status:[I

    sget-object v1, Lcom/baseproject/network/YoukuAsyncTask$Status;->RUNNING:Lcom/baseproject/network/YoukuAsyncTask$Status;

    invoke-virtual {v1}, Lcom/baseproject/network/YoukuAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lc8/AWc;->$SwitchMap$com$baseproject$network$YoukuAsyncTask$Status:[I

    sget-object v1, Lcom/baseproject/network/YoukuAsyncTask$Status;->FINISHED:Lcom/baseproject/network/YoukuAsyncTask$Status;

    invoke-virtual {v1}, Lcom/baseproject/network/YoukuAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
