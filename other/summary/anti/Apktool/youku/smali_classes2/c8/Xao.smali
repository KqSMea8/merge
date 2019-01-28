.class public Lc8/Xao;
.super Ljava/lang/Object;
.source "PreferencesUtil.java"


# static fields
.field private static SHARED_MODEL:I

.field private static SHARED_PREFERENCES:Ljava/lang/String;

.field private static config:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "common_config"

    sput-object v0, Lc8/Xao;->SHARED_PREFERENCES:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput v0, Lc8/Xao;->SHARED_MODEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 225
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, p0, v1, v2}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, p0, v1, v2}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;)F
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    invoke-static {p0, p1, v0, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 202
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    invoke-static {p0, p1, v0, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    invoke-static {v0, p0, v1, v2}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # F

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    invoke-static {v0, p0, v1, v2}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0, v1, v2}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, p0, v1, v2}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Long;

    .prologue
    .line 133
    const-class v0, Ljava/lang/Long;

    invoke-static {p0, p1, p2, v0}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-static {v0, p0, v1, v2}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/Long;

    .prologue
    .line 247
    const/4 v0, 0x0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, p0, p1, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string/jumbo v0, ""

    const-class v1, Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x0

    const-string/jumbo v1, ""

    const-class v2, Ljava/lang/String;

    invoke-static {v0, p0, v1, v2}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 268
    const/4 v0, 0x0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, p0, p1, v1}, Lc8/Xao;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getStringArrays(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arrayName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 444
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    .line 445
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "SharedPreferences is not init!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    :cond_0
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-nez v4, :cond_1

    .line 448
    sget-object v4, Lc8/Xao;->SHARED_PREFERENCES:Ljava/lang/String;

    sget v5, Lc8/Xao;->SHARED_MODEL:I

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sput-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    .line 450
    :cond_1
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_2

    .line 451
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 452
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 453
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 454
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    move-object v0, v3

    .line 458
    :cond_3
    return-object v0
.end method

.method public static getStringArrays(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "arrayName"    # Ljava/lang/String;

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lc8/Xao;->getStringArrays(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Object;
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 353
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "SharedPreferences is not init!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 357
    sget-object v0, Lc8/Xao;->SHARED_PREFERENCES:Ljava/lang/String;

    sget v1, Lc8/Xao;->SHARED_MODEL:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    .line 359
    :cond_1
    const-class v0, Ljava/lang/String;

    if-ne p3, v0, :cond_2

    .line 360
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "defValue":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    .line 361
    .restart local p2    # "defValue":Ljava/lang/Object;
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_3

    .line 362
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "defValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 363
    .restart local p2    # "defValue":Ljava/lang/Object;
    :cond_3
    const-class v0, Ljava/lang/Long;

    if-ne p3, v0, :cond_4

    .line 364
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "defValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 365
    .restart local p2    # "defValue":Ljava/lang/Object;
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_5

    .line 366
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 367
    .restart local p2    # "defValue":Ljava/lang/Object;
    :cond_5
    const-class v0, Ljava/lang/Integer;

    if-ne p3, v0, :cond_6

    .line 368
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 369
    .restart local p2    # "defValue":Ljava/lang/Object;
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_7

    .line 370
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "defValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 371
    .restart local p2    # "defValue":Ljava/lang/Object;
    :cond_7
    const-class v0, Ljava/lang/Float;

    if-ne p3, v0, :cond_8

    .line 372
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "defValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 373
    .restart local p2    # "defValue":Ljava/lang/Object;
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_9

    .line 374
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 375
    .restart local p2    # "defValue":Ljava/lang/Object;
    :cond_9
    const-class v0, Ljava/lang/Boolean;

    if-ne p3, v0, :cond_a

    .line 376
    sget-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 378
    .restart local p2    # "defValue":Ljava/lang/Object;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "save failed, value\'s type invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lc8/Xao;->SHARED_PREFERENCES:Ljava/lang/String;

    invoke-static {p0, v0}, Lc8/Xao;->initContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static initContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "configName"    # Ljava/lang/String;

    .prologue
    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const/4 v0, 0x4

    .line 45
    .local v0, "SHARED_MODEL":I
    :goto_0
    invoke-static {p0, p1, v0}, Lc8/Xao;->initContext(Landroid/content/Context;Ljava/lang/String;I)V

    .line 46
    return-void

    .line 43
    .end local v0    # "SHARED_MODEL":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initContext(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "model"    # I

    .prologue
    .line 55
    sput-object p1, Lc8/Xao;->SHARED_PREFERENCES:Ljava/lang/String;

    .line 56
    sput p2, Lc8/Xao;->SHARED_MODEL:I

    .line 57
    sget v0, Lc8/Xao;->SHARED_MODEL:I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method

.method public static putLong(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 88
    sget-object v1, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, "configEditor":Landroid/content/SharedPreferences$Editor;
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method public static putStringArrays([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "arrayName"    # Ljava/lang/String;

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lc8/Xao;->storeStringArrays(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lc8/Xao;->storeSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lc8/Xao;->storeSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    sput-object v0, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    .line 463
    const-string/jumbo v0, "common_config"

    sput-object v0, Lc8/Xao;->SHARED_PREFERENCES:Ljava/lang/String;

    .line 464
    const/4 v0, 0x0

    sput v0, Lc8/Xao;->SHARED_MODEL:I

    .line 465
    return-void
.end method

.method public static storeSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 101
    sget-object v1, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "SharedPreferences is null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    sget-object v1, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 105
    sget-object v1, Lc8/Xao;->SHARED_PREFERENCES:Ljava/lang/String;

    sget v2, Lc8/Xao;->SHARED_MODEL:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    .line 107
    :cond_1
    sget-object v1, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "configEditor":Landroid/content/SharedPreferences$Editor;
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 109
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void

    .line 110
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 111
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 112
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 113
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 114
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 115
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 116
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 117
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 119
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "value\'s type invalid!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static storeStringArrays(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 410
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    .line 411
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "SharedPreferences is null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 413
    :cond_0
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-nez v4, :cond_1

    .line 414
    sget-object v4, Lc8/Xao;->SHARED_PREFERENCES:Ljava/lang/String;

    sget v5, Lc8/Xao;->SHARED_MODEL:I

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sput-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    .line 416
    :cond_1
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_3

    .line 417
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_4

    array-length v4, p1

    if-lez v4, :cond_4

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v4, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 433
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    :cond_3
    :goto_1
    return v3

    .line 425
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    sget-object v4, Lc8/Xao;->config:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 426
    .local v2, "size":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 429
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    goto :goto_1
.end method
