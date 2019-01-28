.class public Lc8/iE;
.super Ljava/lang/Object;
.source "WVPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVPluginInfo"
.end annotation


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private className:Ljava/lang/String;

.field private paramObj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lc8/iE;->className:Ljava/lang/String;

    .line 264
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lc8/iE;->className:Ljava/lang/String;

    .line 268
    iput-object p2, p0, Lc8/iE;->classLoader:Ljava/lang/ClassLoader;

    .line 269
    return-void
.end method

.method static synthetic access$000(Lc8/iE;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/iE;

    .prologue
    .line 257
    iget-object v0, p0, Lc8/iE;->paramObj:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lc8/iE;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lc8/iE;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getParamObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lc8/iE;->paramObj:Ljava/lang/Object;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 284
    iput-object p1, p0, Lc8/iE;->classLoader:Ljava/lang/ClassLoader;

    .line 285
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lc8/iE;->className:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setParamObj(Ljava/lang/Object;)V
    .locals 0
    .param p1, "paramObj"    # Ljava/lang/Object;

    .prologue
    .line 292
    iput-object p1, p0, Lc8/iE;->paramObj:Ljava/lang/Object;

    .line 293
    return-void
.end method
