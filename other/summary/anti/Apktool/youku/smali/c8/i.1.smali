.class public Lc8/i;
.super Ljava/lang/Object;
.source "AtlasDataBindingUtil.java"


# static fields
.field private static sDefaultComponent:Landroid/databinding/DataBindingComponent;

.field private static sMappers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/i;->sMappers:Ljava/util/HashMap;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lc8/i;->sDefaultComponent:Landroid/databinding/DataBindingComponent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method static bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 8
    .param p0, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/databinding/DataBindingComponent;",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lc8/i;->getDataBinderMapper(Landroid/app/Application;Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v2

    .line 225
    .local v2, "mapper":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "getDataBinder"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/databinding/DataBindingComponent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/View;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 226
    .local v1, "getDataBinderMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 227
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/i;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/databinding/ViewDataBinding;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 229
    .end local v1    # "getDataBinderMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static bind(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 8
    .param p0, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p1, "roots"    # [Landroid/view/View;
    .param p2, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/databinding/DataBindingComponent;",
            "[",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 207
    aget-object v3, p1, v4

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    aget-object v4, p1, v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lc8/i;->getDataBinderMapper(Landroid/app/Application;Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v2

    .line 209
    .local v2, "mapper":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "getDataBinder"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/databinding/DataBindingComponent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [Landroid/view/View;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 210
    .local v1, "getDataBinderMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 211
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/i;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/databinding/ViewDataBinding;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 213
    .end local v1    # "getDataBinderMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static bind(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lc8/i;->sDefaultComponent:Landroid/databinding/DataBindingComponent;

    invoke-static {p0, v0}, Lc8/i;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;
    .locals 14
    .param p0, "root"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            "Landroid/databinding/DataBindingComponent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p0}, Lc8/i;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    .line 171
    .local v0, "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    if-eqz v0, :cond_0

    .line 194
    .end local v0    # "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    :goto_0
    return-object v0

    .line 174
    .restart local v0    # "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 175
    .local v8, "tagObj":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_1

    .line 176
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "View is not a binding layout"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    move-object v7, v8

    .line 178
    check-cast v7, Ljava/lang/String;

    .line 179
    .local v7, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    .line 180
    .local v4, "id":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_2

    .line 181
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "must set a valid ID for view "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 183
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Application;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lc8/i;->getDataBinderMapper(Landroid/app/Application;Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v6

    .line 186
    .local v6, "mapper":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "getLayoutId"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 187
    .local v3, "getLayoutIdMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v3, v6, v9}, Lc8/i;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 189
    .local v5, "layoutId":I
    if-nez v5, :cond_3

    .line 190
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "View is not a binding layout"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v3    # "getLayoutIdMethod":Ljava/lang/reflect/Method;
    .end local v5    # "layoutId":I
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 192
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v3    # "getLayoutIdMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "layoutId":I
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "getDataBinder"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/databinding/DataBindingComponent;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Landroid/view/View;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 193
    .local v2, "getDataBinderMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 194
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, p1, v9}, Lc8/i;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/databinding/ViewDataBinding;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v9

    goto/16 :goto_0
.end method

.method private static bindToAddedViews(Landroid/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroid/databinding/ViewDataBinding;
    .locals 6
    .param p0, "component"    # Landroid/databinding/DataBindingComponent;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "startChildren"    # I
    .param p3, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/databinding/DataBindingComponent;",
            "Landroid/view/ViewGroup;",
            "II)TT;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 344
    .local v3, "endChildren":I
    sub-int v2, v3, p2

    .line 345
    .local v2, "childrenAdded":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 346
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, "childView":Landroid/view/View;
    invoke-static {p0, v0, p3}, Lc8/i;->bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v5

    .line 353
    .end local v0    # "childView":Landroid/view/View;
    :goto_0
    return-object v5

    .line 349
    :cond_0
    new-array v1, v2, [Landroid/view/View;

    .line 350
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 351
    add-int v5, v4, p2

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v4

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 353
    :cond_1
    invoke-static {p0, v1, p3}, Lc8/i;->bind(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v5

    goto :goto_0
.end method

.method public static convertBrIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 338
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static findBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 14
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v13, 0x2f

    const/4 v12, -0x1

    .line 249
    :goto_0
    if-eqz p0, :cond_7

    .line 250
    invoke-static {p0}, Landroid/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    .line 251
    .local v0, "binding":Landroid/databinding/ViewDataBinding;
    if-eqz v0, :cond_0

    .line 282
    .end local v0    # "binding":Landroid/databinding/ViewDataBinding;
    :goto_1
    return-object v0

    .line 254
    .restart local v0    # "binding":Landroid/databinding/ViewDataBinding;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 255
    .local v5, "tag":Ljava/lang/Object;
    instance-of v11, v5, Ljava/lang/String;

    if-eqz v11, :cond_5

    move-object v6, v5

    .line 256
    check-cast v6, Ljava/lang/String;

    .line 257
    .local v6, "tagString":Ljava/lang/String;
    const-string/jumbo v11, "layout"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v11, "_0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 258
    const/4 v11, 0x6

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 259
    .local v2, "nextChar":C
    const/4 v11, 0x7

    invoke-virtual {v6, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 260
    .local v4, "slashIndex":I
    const/4 v1, 0x0

    .line 261
    .local v1, "isUnboundRoot":Z
    if-ne v2, v13, :cond_3

    .line 263
    if-ne v4, v12, :cond_2

    move v1, v8

    .line 269
    :cond_1
    :goto_2
    if-eqz v1, :cond_5

    move-object v0, v10

    .line 271
    goto :goto_1

    :cond_2
    move v1, v9

    .line 263
    goto :goto_2

    .line 264
    :cond_3
    const/16 v11, 0x2d

    if-ne v2, v11, :cond_1

    if-eq v4, v12, :cond_1

    .line 265
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v6, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 267
    .local v3, "nextSlashIndex":I
    if-ne v3, v12, :cond_4

    move v1, v8

    :goto_3
    goto :goto_2

    :cond_4
    move v1, v9

    goto :goto_3

    .line 275
    .end local v1    # "isUnboundRoot":Z
    .end local v2    # "nextChar":C
    .end local v3    # "nextSlashIndex":I
    .end local v4    # "slashIndex":I
    .end local v6    # "tagString":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 276
    .local v7, "viewParent":Landroid/view/ViewParent;
    instance-of v11, v7, Landroid/view/View;

    if-eqz v11, :cond_6

    move-object p0, v7

    .line 277
    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 279
    :cond_6
    const/4 p0, 0x0

    .line 281
    goto :goto_0

    .end local v0    # "binding":Landroid/databinding/ViewDataBinding;
    .end local v5    # "tag":Ljava/lang/Object;
    .end local v7    # "viewParent":Landroid/view/ViewParent;
    :cond_7
    move-object v0, v10

    .line 282
    goto :goto_1
.end method

.method public static getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {p0}, Landroid/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method private static getDataBinderMapper(Landroid/app/Application;Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 18
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "resource"    # Landroid/content/res/Resources;
    .param p2, "resourceId"    # I

    .prologue
    .line 359
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 360
    .local v11, "value":Landroid/util/TypedValue;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v11, v13}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 361
    iget v7, v11, Landroid/util/TypedValue;->assetCookie:I

    .line 364
    .local v7, "cookie":I
    const/4 v5, 0x0

    .line 365
    .local v5, "className":Ljava/lang/String;
    const/4 v3, 0x0

    .line 366
    .local v3, "bundleLocation":Ljava/lang/String;
    :try_start_0
    const-class v13, Landroid/content/res/AssetManager;

    const-string/jumbo v14, "getCookieName"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lc8/i;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    .local v2, "assetsPath":Ljava/lang/String;
    const-string/jumbo v13, ".zip"

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 369
    const-string/jumbo v13, "/storage/"

    const-string/jumbo v14, "/version."

    invoke-static {v2, v13, v14}, Lc8/i;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    const-string/jumbo v13, "%s.%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "DataBinderMapper"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 390
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 391
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "can not find DatabindMapper : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v2    # "assetsPath":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 400
    .local v9, "e":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 372
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v2    # "assetsPath":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v13, ".so"

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 374
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v13

    invoke-virtual {v13}, Lc8/dy;->getBundles()Ljava/util/List;

    move-result-object v4

    .line 375
    .local v4, "bundles":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/Bundle;>;"
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_0

    .line 377
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/hy;

    .line 378
    .local v10, "impl":Lc8/hy;
    invoke-virtual {v10}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v13

    invoke-virtual {v13}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 380
    invoke-virtual {v10}, Lc8/hy;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 381
    const-string/jumbo v13, "%s.%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "DataBinderMapper"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 382
    goto :goto_0

    .line 375
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 388
    .end local v4    # "bundles":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/Bundle;>;"
    .end local v10    # "impl":Lc8/hy;
    .end local v12    # "x":I
    :cond_3
    const-string/jumbo v5, "android.databinding.DataBinderMapper"

    goto :goto_0

    .line 393
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 394
    .local v6, "clazz":Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 395
    .local v8, "dataMapper":Ljava/lang/Object;
    sget-object v13, Lc8/i;->sMappers:Ljava/util/HashMap;

    invoke-virtual {v13, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    return-object v8
.end method

.method public static getDefaultComponent()Landroid/databinding/DataBindingComponent;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lc8/i;->sDefaultComponent:Landroid/databinding/DataBindingComponent;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachToParent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lc8/i;->sDefaultComponent:Landroid/databinding/DataBindingComponent;

    invoke-static {p0, p1, p2, p3, v0}, Lc8/i;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachToParent"    # Z
    .param p4, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Landroid/databinding/DataBindingComponent;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 124
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 125
    .local v1, "useChildren":Z
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 126
    .local v0, "startChildren":I
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 128
    invoke-static {p4, p2, v0, p1}, Lc8/i;->bindToAddedViews(Landroid/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    .line 130
    :goto_1
    return-object v3

    .end local v0    # "startChildren":I
    .end local v1    # "useChildren":Z
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    move v1, v0

    .line 124
    goto :goto_0

    .line 130
    .restart local v0    # "startChildren":I
    .restart local v1    # "useChildren":Z
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    invoke-static {p4, v2, p1}, Lc8/i;->bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    goto :goto_1
.end method

.method public static setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lc8/i;->sDefaultComponent:Landroid/databinding/DataBindingComponent;

    invoke-static {p0, p1, v0}, Lc8/i;->setContentView(Landroid/app/Activity;ILandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public static setContentView(Landroid/app/Activity;ILandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "layoutId"    # I
    .param p2, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/app/Activity;",
            "I",
            "Landroid/databinding/DataBindingComponent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 325
    .local v1, "decorView":Landroid/view/View;
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 326
    .local v0, "contentView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-static {p2, v0, v2, p1}, Lc8/i;->bindToAddedViews(Landroid/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroid/databinding/ViewDataBinding;

    move-result-object v2

    return-object v2
.end method

.method public static setDefaultComponent(Landroid/databinding/DataBindingComponent;)V
    .locals 0
    .param p0, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    .line 58
    sput-object p0, Lc8/i;->sDefaultComponent:Landroid/databinding/DataBindingComponent;

    .line 59
    return-void
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 406
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-object v2

    .line 409
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 410
    .local v1, "start":I
    if-eq v1, v4, :cond_0

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 413
    .local v0, "end":I
    if-eq v0, v4, :cond_0

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
