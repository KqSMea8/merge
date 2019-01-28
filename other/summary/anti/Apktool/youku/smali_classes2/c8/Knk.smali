.class public Lc8/Knk;
.super Ljava/lang/Object;
.source "DetailUtil.java"


# static fields
.field public static land_action_bar_height:I

.field public static land_bottom:I

.field public static land_play_height:I

.field public static land_play_width:I

.field public static land_size:[I

.field public static port_action_bar_height:I

.field public static port_bottom:I

.field public static port_play_height:I

.field public static port_play_width:I

.field public static port_size:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getRealHeight(ILandroid/view/Display;)I
    .locals 6
    .param p0, "sdk_version"    # I
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/16 v5, 0xd

    .line 154
    const/4 v4, 0x0

    .line 155
    .local v4, "methodString":Ljava/lang/String;
    if-ne p0, v5, :cond_1

    .line 156
    const-string/jumbo v4, "getRealHeight"

    .line 159
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 161
    .local v0, "c":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v5, "android.view.Display"

    invoke-static {v5}, Lc8/Knk;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_1
    const/4 v3, 0x0

    .line 168
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 172
    :goto_2
    const/4 v2, -0x1

    .line 174
    .local v2, "height":I
    const/4 v5, 0x0

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, p1, v5}, Lc8/Knk;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 178
    :goto_3
    return v2

    .line 157
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "height":I
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    if-le p0, v5, :cond_0

    .line 158
    const-string/jumbo v4, "getRawHeight"

    goto :goto_0

    .line 162
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 169
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "height":I
    :catch_2
    move-exception v1

    .line 176
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static getRealWidth(ILandroid/view/Display;)I
    .locals 6
    .param p0, "sdk_version"    # I
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/16 v5, 0xd

    .line 182
    const/4 v4, -0x1

    .line 183
    .local v4, "width":I
    const/4 v3, 0x0

    .line 184
    .local v3, "methodString":Ljava/lang/String;
    if-ne p0, v5, :cond_1

    .line 185
    const-string/jumbo v3, "getRealWidth"

    .line 188
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 190
    .local v0, "c":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v5, "android.view.Display"

    invoke-static {v5}, Lc8/Knk;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :goto_1
    const/4 v2, 0x0

    .line 197
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 203
    :goto_2
    const/4 v5, 0x0

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, p1, v5}, Lc8/Knk;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v4

    .line 211
    :goto_3
    return v4

    .line 186
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    if-le p0, v5, :cond_0

    .line 187
    const-string/jumbo v3, "getRawWidth"

    goto :goto_0

    .line 191
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 204
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 206
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 208
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3
.end method

.method public static haveLandScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 24
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v3, "land_size"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static havePortScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v3, "port_size"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static readLandActionBarHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    sget v1, Lc8/Knk;->land_action_bar_height:I

    if-gtz v1, :cond_0

    .line 139
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "land_action_bar"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "height"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lc8/Knk;->land_action_bar_height:I

    .line 142
    :cond_0
    sget v1, Lc8/Knk;->land_action_bar_height:I

    return v1
.end method

.method public static readPortActionBarHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    sget v1, Lc8/Knk;->port_action_bar_height:I

    if-gtz v1, :cond_0

    .line 123
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "port_action_bar"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "height"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lc8/Knk;->port_action_bar_height:I

    .line 126
    :cond_0
    sget v1, Lc8/Knk;->port_action_bar_height:I

    return v1
.end method

.method public static writeLandActionBarHeight(I)V
    .locals 5
    .param p0, "height"    # I

    .prologue
    .line 146
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v3, "land_action_bar"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "height"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    sput p0, Lc8/Knk;->land_action_bar_height:I

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    return-void
.end method

.method public static writeLandScreen(IIIIII)V
    .locals 8
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I
    .param p5, "width"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 34
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v3, "land_size"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "height"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "left"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 39
    const-string/jumbo v2, "top"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    const-string/jumbo v2, "right"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 41
    const-string/jumbo v2, "bottom"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    const-string/jumbo v2, "height"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 46
    sput-object v2, Lc8/Knk;->land_size:[I

    aput p0, v2, v4

    .line 47
    sget-object v2, Lc8/Knk;->land_size:[I

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 48
    sget-object v2, Lc8/Knk;->land_size:[I

    aput p2, v2, v5

    .line 49
    sget-object v2, Lc8/Knk;->land_size:[I

    aput p3, v2, v6

    .line 50
    sget-object v2, Lc8/Knk;->land_size:[I

    const/4 v3, 0x4

    aput p4, v2, v3

    .line 51
    sget-object v2, Lc8/Knk;->land_size:[I

    aput p5, v2, v7

    .line 52
    sget v2, Lc8/Knk;->land_play_width:I

    if-nez v2, :cond_1

    .line 53
    sget-object v2, Lc8/Knk;->land_size:[I

    aget v2, v2, v7

    sget-object v3, Lc8/Knk;->land_size:[I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lc8/Knk;->land_play_width:I

    .line 55
    :cond_1
    sget v2, Lc8/Knk;->land_play_height:I

    if-nez v2, :cond_2

    .line 56
    sget v2, Lc8/Knk;->land_play_width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lc8/Knk;->land_play_height:I

    .line 58
    :cond_2
    sget-object v2, Lc8/Knk;->land_size:[I

    aget v2, v2, v6

    sput v2, Lc8/Knk;->land_bottom:I

    goto :goto_0
.end method

.method public static writePortActionBarHeight(I)V
    .locals 5
    .param p0, "height"    # I

    .prologue
    .line 130
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v3, "port_action_bar"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 131
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "height"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 133
    sput p0, Lc8/Knk;->port_action_bar_height:I

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method

.method public static writePortScreen(IIIIII)V
    .locals 7
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I
    .param p5, "width"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 82
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v3, "port_size"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "left"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string/jumbo v2, "top"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string/jumbo v2, "right"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string/jumbo v2, "bottom"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string/jumbo v2, "height"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 92
    sput-object v2, Lc8/Knk;->port_size:[I

    aput p0, v2, v4

    .line 93
    sget-object v2, Lc8/Knk;->port_size:[I

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 94
    sget-object v2, Lc8/Knk;->port_size:[I

    const/4 v3, 0x2

    aput p2, v2, v3

    .line 95
    sget-object v2, Lc8/Knk;->port_size:[I

    aput p3, v2, v5

    .line 96
    sget-object v2, Lc8/Knk;->port_size:[I

    const/4 v3, 0x4

    aput p4, v2, v3

    .line 97
    sget-object v2, Lc8/Knk;->port_size:[I

    aput p5, v2, v6

    .line 98
    sget-object v2, Lc8/Knk;->port_size:[I

    aget v2, v2, v6

    sput v2, Lc8/Knk;->port_play_width:I

    .line 99
    sget v2, Lc8/Knk;->port_play_height:I

    if-nez v2, :cond_0

    .line 100
    sget v2, Lc8/Knk;->port_play_width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lc8/Knk;->port_play_height:I

    .line 101
    :cond_0
    sget-object v2, Lc8/Knk;->port_size:[I

    aget v2, v2, v5

    sput v2, Lc8/Knk;->port_bottom:I

    .line 102
    return-void
.end method
