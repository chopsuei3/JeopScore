.class public Lcom/google/appinventor/components/runtime/util/PropertyUtil;
.super Ljava/lang/Object;
.source "PropertyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyComponentProperties(Lcom/google/appinventor/components/runtime/Component;Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/Component;
    .locals 8
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Source and target classes must be identical"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    .restart local p0
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 35
    .local v1, componentClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 36
    .local v0, componentMethods:[Ljava/lang/reflect/Method;
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 38
    .local v2, componentMethod:Ljava/lang/reflect/Method;
    const-class v5, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 40
    move-object v6, v2

    .line 42
    .local v6, propertySetterMethod:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, propertyName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #componentMethod:Ljava/lang/reflect/Method;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copy"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/PropertyUtil;->getPropertyCopierMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 47
    .local v2, propertyCopierMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 48
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .end local v5           #propertyName:Ljava/lang/String;
    const/4 v6, 0x0

    aput-object p0, v5, v6

    .end local v6           #propertySetterMethod:Ljava/lang/reflect/Method;
    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .end local v2           #propertyCopierMethod:Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i$:I
    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 54
    .local v2, propertyCopierMethod:Ljava/lang/reflect/Method;
    .restart local v5       #propertyName:Ljava/lang/String;
    .restart local v6       #propertySetterMethod:Ljava/lang/reflect/Method;
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .end local v2           #propertyCopierMethod:Ljava/lang/reflect/Method;
    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    .local v2, propertyGetterMethod:Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .end local v5           #propertyName:Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v5, v5, v7

    .line 58
    .local v5, propertySetterParameterType:Ljava/lang/Class;
    const-class v7, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    .end local v5           #propertySetterParameterType:Ljava/lang/Class;
    if-eqz v5, :cond_1

    .line 60
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, propertyValue:Ljava/lang/Object;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    invoke-virtual {v6, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 63
    .end local v2           #propertyValue:Ljava/lang/Object;
    .end local v6           #propertySetterMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 65
    .local v2, e:Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 66
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception p0

    .line 68
    .local p0, e2:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0           #e2:Ljava/lang/reflect/InvocationTargetException;
    throw p0

    .line 72
    .local p0, source:Lcom/google/appinventor/components/runtime/Component;
    :cond_3
    return-object p1
.end method

.method private static getPropertyCopierMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter "copierMethodName"
    .parameter "componentClass"

    .prologue
    .line 83
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p1, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    .local v0, propertyCopierMethod:Ljava/lang/reflect/Method;
    const-class v1, Lcom/google/appinventor/components/annotations/SimplePropertyCopier;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 94
    .end local v0           #propertyCopierMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v1

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 91
    if-nez p1, :cond_0

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method
