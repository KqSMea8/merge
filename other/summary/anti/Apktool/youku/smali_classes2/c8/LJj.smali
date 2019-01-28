.class public final Lc8/LJj;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lc8/LSe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/MJj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RetryInterceptor"
.end annotation


# instance fields
.field private mIntentRetryCnt:I

.field private mRetryCnt:I

.field final synthetic this$0:Lc8/MJj;


# direct methods
.method public constructor <init>(Lc8/MJj;I)V
    .locals 0
    .param p2, "intentRetryCnt"    # I

    .prologue
    .line 161
    iput-object p1, p0, Lc8/LJj;->this$0:Lc8/MJj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p2, p0, Lc8/LJj;->mIntentRetryCnt:I

    .line 163
    return-void
.end method

.method private getResponse(Lc8/KSe;)Lc8/cTe;
    .locals 4
    .param p1, "chain"    # Lc8/KSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    invoke-interface {p1}, Lc8/KSe;->request()Lc8/VSe;

    move-result-object v2

    invoke-interface {p1, v2}, Lc8/KSe;->proceed(Lc8/VSe;)Lc8/cTe;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .local v1, "response":Lc8/cTe;
    :goto_0
    return-object v1

    .line 174
    .end local v1    # "response":Lc8/cTe;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    iget v2, p0, Lc8/LJj;->mRetryCnt:I

    iget v3, p0, Lc8/LJj;->mIntentRetryCnt:I

    if-ge v2, v3, :cond_0

    .line 176
    iget v2, p0, Lc8/LJj;->mRetryCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/LJj;->mRetryCnt:I

    .line 177
    invoke-direct {p0, p1}, Lc8/LJj;->getResponse(Lc8/KSe;)Lc8/cTe;

    move-result-object v1

    .restart local v1    # "response":Lc8/cTe;
    goto :goto_0

    .line 179
    .end local v1    # "response":Lc8/cTe;
    :cond_0
    throw v0
.end method


# virtual methods
.method public getRetryTime()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lc8/LJj;->mRetryCnt:I

    return v0
.end method

.method public intercept(Lc8/KSe;)Lc8/cTe;
    .locals 1
    .param p1, "chain"    # Lc8/KSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lc8/LJj;->getResponse(Lc8/KSe;)Lc8/cTe;

    move-result-object v0

    return-object v0
.end method
