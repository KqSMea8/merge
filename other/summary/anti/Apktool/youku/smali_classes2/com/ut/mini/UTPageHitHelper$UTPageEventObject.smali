.class public Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
.super Ljava/lang/Object;
.source "UTPageHitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/UTPageHitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTPageEventObject"
.end annotation


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mIsH5Called:Z

.field private mIsPageAppearCalled:Z

.field private mIsSkipPage:Z

.field private mNextPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageName:Ljava/lang/String;

.field private mPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageStatus:Lcom/ut/mini/UTPageStatus;

.field private mPageStatusCode:I

.field private mPageStayTimstamp:J

.field private mPageUrl:Landroid/net/Uri;

.field private mRefPage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    .line 177
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    .line 178
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    .line 179
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    .line 180
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    .line 181
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    .line 182
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsSkipPage:Z

    .line 183
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    .line 184
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mCacheKey:Ljava/lang/String;

    .line 185
    iput v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    .line 186
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPageStatus()Lcom/ut/mini/UTPageStatus;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    return-object v0
.end method

.method public getPageStatusCode()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    return v0
.end method

.method public getPageStayTimstamp()J
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    return-wide v0
.end method

.method public getPageUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getRefPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    return-object v0
.end method

.method public isH5Called()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    return v0
.end method

.method public isPageAppearCalled()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    return v0
.end method

.method public isSkipPage()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsSkipPage:Z

    return v0
.end method

.method public resetPropertiesWithoutSkipFlagAndH5Flag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    .line 206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    .line 207
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    .line 208
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    .line 209
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    sget-object v1, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    if-eq v0, v1, :cond_1

    .line 211
    :cond_0
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    .line 213
    :cond_1
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    .line 214
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    .line 215
    iput v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    .line 216
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    .line 217
    return-void
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCacheKey"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mCacheKey:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setH5Called()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    .line 225
    return-void
.end method

.method public setNextPageProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "aNextPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    .line 190
    return-void
.end method

.method public setPageAppearCalled()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    .line 237
    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aPageName"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setPageProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "aPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    .line 257
    return-void
.end method

.method public setPageStatus(Lcom/ut/mini/UTPageStatus;)V
    .locals 0
    .param p1, "aPageStatus"    # Lcom/ut/mini/UTPageStatus;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    .line 245
    return-void
.end method

.method public setPageStatusCode(I)V
    .locals 0
    .param p1, "aPageStatusCode"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    .line 293
    return-void
.end method

.method public setPageStayTimstamp(J)V
    .locals 1
    .param p1, "aPageStayTimstamp"    # J

    .prologue
    .line 264
    iput-wide p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    .line 265
    return-void
.end method

.method public setPageUrl(Landroid/net/Uri;)V
    .locals 0
    .param p1, "aPageUrl"    # Landroid/net/Uri;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    .line 273
    return-void
.end method

.method public setRefPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "aRefPage"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setToSkipPage()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsSkipPage:Z

    .line 229
    return-void
.end method
