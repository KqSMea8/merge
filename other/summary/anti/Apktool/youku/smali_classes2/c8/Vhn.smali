.class public Lc8/Vhn;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YKPush.CommonUtils"

.field private static tablet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, -0x1

    sput v0, Lc8/Vhn;->tablet:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;
    .param p3, "encodeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Vhn;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "y4."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 53
    :cond_0
    if-eqz p2, :cond_2

    .line 54
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 55
    .local v7, "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 51
    .end local v7    # "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v0, "y1."

    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string/jumbo v1, "userNumberId"

    .line 59
    invoke-static {v1}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v6, p2

    .line 58
    invoke-static/range {v0 .. v6}, Lc8/LHg;->pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 60
    return-void
.end method

.method public static varargs getInitialField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldNames"    # [Ljava/lang/String;

    .prologue
    .line 32
    move-object v1, p0

    .line 33
    :goto_0
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "result":Ljava/lang/Object;
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 37
    .local v0, "fieldNamesTemp":[Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    move-object p1, v0

    goto :goto_0

    .line 41
    .end local v0    # "fieldNamesTemp":[Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    const/4 v1, 0x0

    .line 42
    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 44
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public static isTablet()Z
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 18
    const/4 v1, -0x1

    sget v3, Lc8/Vhn;->tablet:I

    if-ne v1, v3, :cond_0

    .line 20
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v3, 0x3

    if-lt v1, v3, :cond_1

    move v1, v2

    :goto_0
    sput v1, Lc8/Vhn;->tablet:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_1
    sget v1, Lc8/Vhn;->tablet:I

    if-ne v1, v2, :cond_2

    :goto_2
    return v0

    :cond_1
    move v1, v0

    .line 21
    goto :goto_0

    .line 28
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static notiSettingDialogNoClick()V
    .locals 4

    .prologue
    .line 66
    const-string/jumbo v0, "\u201c\u6211\u504f\u504f\u4e0d\u8981\u201d\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v1, "\u63a8\u9001"

    const/4 v2, 0x0

    const-string/jumbo v3, "push.cancel"

    invoke-static {v0, v1, v2, v3}, Lc8/Vhn;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static notiSettingDialogYesClick()V
    .locals 4

    .prologue
    .line 76
    const-string/jumbo v0, "\u201c\u90a3\u6715\u8bd5\u8bd5\u5457\u201d\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v1, "\u63a8\u9001"

    const/4 v2, 0x0

    const-string/jumbo v3, "push.setting"

    invoke-static {v0, v1, v2, v3}, Lc8/Vhn;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 80
    return-void
.end method
