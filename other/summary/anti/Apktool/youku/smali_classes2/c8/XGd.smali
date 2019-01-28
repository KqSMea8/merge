.class public Lc8/XGd;
.super Ljava/lang/Object;
.source "ReflectClass.java"


# static fields
.field private static mCachedClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mClassName:Ljava/lang/String;

.field private mClassObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/XGd;->mCachedClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/XGd;->mClass:Ljava/lang/Class;

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lc8/XGd;->mClassObject:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/XGd;->mClassName:Ljava/lang/String;

    .line 17
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

.method public static forName(Ljava/lang/String;)Lc8/XGd;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lc8/XGd;

    invoke-direct {v0, p0}, Lc8/XGd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static forObject(Ljava/lang/Object;)Lc8/XGd;
    .locals 1
    .param p0, "classObject"    # Ljava/lang/Object;

    .prologue
    .line 58
    new-instance v0, Lc8/XGd;

    invoke-direct {v0, p0}, Lc8/XGd;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public varargs constructor([Ljava/lang/Class;)Lc8/YGd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/YGd;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lc8/YGd;

    invoke-direct {v0, p0, p1}, Lc8/YGd;-><init>(Lc8/XGd;[Ljava/lang/Class;)V

    return-object v0
.end method

.method getRealClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v1, p0, Lc8/XGd;->mClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 30
    iget-object v0, p0, Lc8/XGd;->mClass:Ljava/lang/Class;

    .line 40
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v0

    .line 31
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v1, p0, Lc8/XGd;->mClassObject:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, p0, Lc8/XGd;->mClassObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 34
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    sget-object v1, Lc8/XGd;->mCachedClasses:Ljava/util/HashMap;

    iget-object v2, p0, Lc8/XGd;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 35
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 36
    iget-object v1, p0, Lc8/XGd;->mClassName:Ljava/lang/String;

    invoke-static {v1}, Lc8/XGd;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    sget-object v1, Lc8/XGd;->mCachedClasses:Ljava/util/HashMap;

    iget-object v2, p0, Lc8/XGd;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/aHd;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/aHd;"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lc8/aHd;

    invoke-direct {v0, p0, p1, p2}, Lc8/aHd;-><init>(Lc8/XGd;Ljava/lang/String;[Ljava/lang/Class;)V

    return-object v0
.end method
